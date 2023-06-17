import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/test_class.dart';
import '../models/login_screen_model.dart';
import '../services/provider.dart';
import '../utils/color_utils.dart';


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
            ? Icon(Icons.visibility_off_outlined,color: Color(kPrimaryColor), size: sizeW(20))
            : Icon(Icons.visibility_outlined, color: Color(kPrimaryColor),size: sizeW(20)));
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
      Get.toNamed(kHomeScreen);
      // Get.offAllNamed(kWebViewScreen,arguments: 'https://moyenxpress.com/loginForWeb?email=${email.text}&password=${password.text}&device_token=${deviceToken}');

      //  Get.offAllNamed(kWebViewScreen,arguments: 'https://activemoyen.globalapplicationbrands.com/loginForWeb?email=${email.text}&password=${password.text}');

    }
    // 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
    //

  }


  void skipLogin(){

  }


  void setUser()async{
    SharedPreferences prfs = await SharedPreferences.getInstance();
    prfs.setString("isUser", "true");
    prfs.setString("email", email.text);
    prfs.setString("password", password.text);
  }



}