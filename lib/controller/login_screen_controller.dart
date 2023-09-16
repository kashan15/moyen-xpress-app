import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moyen_xpress_app/models/login_model.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import 'package:moyen_xpress_app/utils/storage_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/test_class.dart';
import '../components/text_widget.dart';
import '../models/login_api.dart';
import '../models/login_screen_model.dart';
import '../services/provider.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';


class LoginScreenController extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  ApiProvider apiProvider = ApiProvider();
  RxBool isLoading = false.obs;
  RxString showError = ''.obs;

  final _getStorage = GetStorage();

  LoginModel loginModel = LoginModel();

  RxBool isPasswordVisible = false.obs;
  RxBool onRememberMe = false.obs;

  RxBool isNotValidate = false.obs;
  RxBool isDialogLoading = false.obs;

  @override
  void onInit() {
    setIntroScreen();
    super.onInit();
  }

  // void onInit(){
  //   email.clear();
  //   password.clear();
  //   super.onInit();
  // }

  setIntroScreen()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("intro_screen", "true");
  }

  getVisibleIcon() {
    // if(controller.isPasswordVisible.value)
    // {|
    return GestureDetector(
        onTap: onPasswordVisibilityChange,
        child: !isPasswordVisible.value
            ? Icon(Icons.visibility_off_outlined,color: Colors.white, size: sizeW(20))
            : Icon(Icons.visibility_outlined, color: Colors.white,size: sizeW(20)));
  }

  onPasswordVisibilityChange() {
    isPasswordVisible.value = !isPasswordVisible.value;
    if (kDebugMode) {
      print("isPasswordVisible $isPasswordVisible");
    }
  }



  onLogin() {
    if(emailController.text.isEmpty){
      showErrorMessage(
          'Please',
          'Enter your email first'
      );
    } else if(passwordController.text.isEmpty){
      showErrorMessage(
          'Please',
          'Enter your password'
      );
    }
    //isNotValidate.value = true;

    /// initiate Loader
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
      isLoading.value = true;
      login();
    }
    // if Fields are not okay
    // if (kDebugMode) {
    //   print(false);
    // }
    //isNotValidate.value = false;
  }

  login() async{
    /// login API hit
    await LoginApi.getLoginResponse(
      email: emailController.text,
      password: passwordController.text,
      //fcmToken: _getStorage.read(fcmGlobalToken)
    )
        .then((value) {
      /// get response from API
      loginModel = value;

      /// log
      if (kDebugMode) {
        log("email pass ${emailController.text}  ${passwordController.text}");
      }

      /// if login is true go to next screen, save data
      if(loginModel.result == true){

        /// now Saving Data
        _getStorage.write(authToken, loginModel.accessToken);
        _getStorage.write(isAlreadyLoginUtil, true);
        _getStorage.write(tokenType, loginModel.tokenType);
        _getStorage.write(customerData, loginModel.user?.toJson());
        setRememberMe();

        Get.offAllNamed(kNavBar1);
        //Get.offAllNamed(kOpenSea);
        if (kDebugMode) log("loginButtonResponse ${loginModel.toJson()} ");
      }

      // if login is not true show snackbar with message
      else if (loginModel.result == false) {
        showErrorMessage(
          loginFailedSUtil.tr,
          value.message.toString(),
        );
        isLoading.value = false;
      }

      //no login response
      else {
        showErrorMessage(
          loginFailedSUtil.tr,
          wentWrongSUtil.tr,
        );
      }

      //remove loader
      isLoading.value = false;
    });
  }

  onLoginValidate() {
    // if fields are okay
    if (loginFormKey.currentState!.validate()) {
      isNotValidate.value = true;

      // initiate Loader
      isLoading.value = true;
      login();
    }
    // if Fields are not okay
    else {
      if (kDebugMode) {
        print(false);
      }
      isNotValidate.value = false;
    }
  }

  setRememberMe() {
    if (onRememberMe.value) {
      _getStorage.write('remember', onRememberMe.value);
      _getStorage.write(emailSPUtil, emailController.text);
      _getStorage.write(passSPUtil, passwordController.text);
    } else if (!onRememberMe.value) {
      _getStorage.write('remember', onRememberMe.value);
      _getStorage.write(emailSPUtil, null);
      _getStorage.write(passSPUtil, null);
    }
  }

  getRememberMe() {
    if (onRememberMe.value) {
      emailController.text = _getStorage.read(emailSPUtil);
      passwordController.text = _getStorage.read(passSPUtil);
    }
  }

  onRememberMeChange() {
    onRememberMe.value = !onRememberMe.value;
  }

  showErrorMessage(String title, String message){
    Get.snackbar(
        '',
        '',
        colorText: Colors.white,
        backgroundColor: Colors.white,
        titleText: TextWidget(
          textTitle: title,
          fontFamily: poppinsSemiBold,
          fontSize: Get.height * 0.02,
          color: Colors.black,
        ),
        messageText: TextWidget(
          textTitle: message,
          fontFamily: poppinsMedium,
          fontSize: Get.height * 0.015,
          color: Colors.black,
        ),
        snackPosition: SnackPosition.BOTTOM

    );
  }


  // void login()async{
  //   isLoading.value = true;
  //   showError.value = '';
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var deviceToken = prefs.getString('deviceToken');
  //   LoginScreenModel model = LoginScreenModel(
  //       email: email.text,
  //       password: password.text,
  //       deviceToken: deviceToken
  //   );
  //
  //   model.toJson();
  //   Map<String,dynamic> data =  await apiProvider.loginApi(model);
  //   isLoading.value = false;
  //   if(data['catchError'] !=''){
  //     showError.value = data['catchError'];
  //   }else if(data['wrongUser'] != ''){
  //     showError.value = data['wrongUser'];
  //   }else if(data['data']['result'] == true){
  //     showError.value = '';
  //     setUser();
  //     print("resulr: ${data['data']}");
  //     Get.toNamed(kNavBar1);
  //     // Get.offAllNamed(kWebViewScreen,arguments: 'https://moyenxpress.com/loginForWeb?email=${email.text}&password=${password.text}&device_token=${deviceToken}');
  //
  //     //  Get.offAllNamed(kWebViewScreen,arguments: 'https://activemoyen.globalapplicationbrands.com/loginForWeb?email=${email.text}&password=${password.text}');
  //
  //   }
  //   // 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
  //   //
  //
  // }

  bool isLoading1 = false;

  // void onLogin()async{
  //   if(email.text.isEmpty){
  //     Get.snackbar(
  //       'please',
  //       'enter email'
  //     );
  //   }
  //   else if(password.text.isEmpty){
  //     Get.snackbar(
  //         'please',
  //         'enter password'
  //     );
  //   }
  //   else if(email.text == 'customer1@gmail.com' && password.text == '123456'){
  //     isLoading1 = true;
  //     Future.delayed(const Duration(seconds: 3), (){
  //       Get.toNamed(kNavBar1);
  //     }
  //     );
  //     isLoading1 = false;
  //   }
  //   else {
  //     Get.snackbar(
  //         'please',
  //         'enter correct credentials'
  //     );
  //   }
  //
  //
  //   // else {
  //   //   isLoading1 = true;
  //   //   Future.delayed(const Duration(seconds: 3), (){
  //   //     Get.toNamed(kNavBar1);
  //   //   }
  //   //   );
  //   //   isLoading1 = false;
  //   // }
  // }

  void startDelayedNavigation() async {
    if(emailController.text.isEmpty){
      Get.snackbar(
        '',
        '',
        colorText: Colors.white,
        backgroundColor: Colors.white,
        titleText: TextWidget(
          textTitle: 'please',
          fontFamily: poppinsSemiBold,
          fontSize: Get.height * 0.02,
          color: Colors.black,
        ),
        messageText: TextWidget(
          textTitle: 'enter your email first',
          fontFamily: poppinsMedium,
          fontSize: Get.height * 0.015,
          color: Colors.black,
        ),
      );
    }
    else if(passwordController.text.isEmpty){
      Get.snackbar(
        '',
        '',
        colorText: Colors.white,
        backgroundColor: Colors.white,
        titleText: TextWidget(
          textTitle: 'please',
          fontFamily: poppinsSemiBold,
          fontSize: Get.height * 0.02,
          color: Colors.black,
        ),
        messageText: TextWidget(
          textTitle: 'enter password',
          fontFamily: poppinsMedium,
          fontSize: Get.height * 0.015,
          color: Colors.black,
        ),
      );

    }
    else if(emailController.text != "customer1@gmail.com"){
      Get.snackbar(
        '',
        '',
        colorText: Colors.white,
        backgroundColor: Colors.white,
        titleText: TextWidget(
          textTitle: 'please',
          fontFamily: poppinsSemiBold,
          fontSize: Get.height * 0.02,
          color: Colors.black,
        ),
        messageText: TextWidget(
          textTitle: 'enter correct email',
          fontFamily: poppinsMedium,
          fontSize: Get.height * 0.015,
          color: Colors.black,
        ),
      );
    }
    else if(passwordController.text != "123456"){
      Get.snackbar(
        '',
        '',
        colorText: Colors.white,
        backgroundColor: Colors.white,
        titleText: TextWidget(
          textTitle: 'please',
          fontFamily: poppinsSemiBold,
          fontSize: Get.height * 0.02,
          color: Colors.black,
        ),
        messageText: TextWidget(
          textTitle: 'enter correct password',
          fontFamily: poppinsMedium,
          fontSize: Get.height * 0.015,
          color: Colors.black,
        ),
      );
    }

    else {
      // Show the circular progress indicator
      Get.dialog(
          const Center(
              child: CircularProgressIndicator(
                color: homeBoxColor,
              )
          ));
      await Future.delayed(const Duration(seconds: 2));
      Get.back();
      Get.offAllNamed(kNavBar1);
      // email.clear();
      // password.clear();
    }
  }


  void skipLogin(){}


  void setUser()async{
    SharedPreferences prfs = await SharedPreferences.getInstance();
    prfs.setString("isUser", "true");
    prfs.setString("email", emailController.text);
    prfs.setString("password", passwordController.text);
  }



}