import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/test_class.dart';
import '../components/text_widget.dart';
import '../models/login_screen_model.dart';
import '../services/provider.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';


class LoginScreenController extends GetxController{

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  ApiProvider apiProvider = ApiProvider();
  RxBool isLoading = false.obs;
  RxString showError = ''.obs;

  RxBool isPasswordVisible = false.obs;

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


  void login()async{
    isLoading.value = true;
    showError.value = '';
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var deviceToken = prefs.getString('deviceToken');
    LoginScreenModel model = LoginScreenModel(
        email: email.text,
        password: password.text,
        deviceToken: deviceToken
    );

    model.toJson();
    Map<String,dynamic> data =  await apiProvider.loginApi(model);
    isLoading.value = false;
    if(data['catchError'] !=''){
      showError.value = data['catchError'];
    }else if(data['wrongUser'] != ''){
      showError.value = data['wrongUser'];
    }else if(data['data']['result'] == true){
      showError.value = '';
      setUser();
      print("resulr: ${data['data']}");
      Get.toNamed(kNavBar1);
      // Get.offAllNamed(kWebViewScreen,arguments: 'https://moyenxpress.com/loginForWeb?email=${email.text}&password=${password.text}&device_token=${deviceToken}');

      //  Get.offAllNamed(kWebViewScreen,arguments: 'https://activemoyen.globalapplicationbrands.com/loginForWeb?email=${email.text}&password=${password.text}');

    }
    // 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
    //

  }

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
    if(email.text.isEmpty){
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
    else if(password.text.isEmpty){
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
    else if(email.text != "customer1@gmail.com"){
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
    else if(password.text != "123456"){
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
    prfs.setString("email", email.text);
    prfs.setString("password", password.text);
  }



}