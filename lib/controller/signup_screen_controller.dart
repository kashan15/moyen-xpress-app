import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';

import '../constants/dialogue_box.dart';
import '../models/signup_screen_model.dart';
import '../services/provider.dart';
import '../utils/color_utils.dart';
class SignupScreenController extends GetxController{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  RxString  confirmPasswordError = ''.obs;
  RxString  signupError = ''.obs;
  RxBool isLoading = false.obs;
  ApiProvider apiProvider = ApiProvider();


  void signup()async {
    if(passwordController.text == confirmPasswordController.text){
      isLoading.value = true;
      clearVariables();
      SignupScreenModel model = SignupScreenModel(
          name: userNameController.text,
          email: emailController.text,
          password: passwordController.text
      );
      var result =  await apiProvider.signupApi(model);
      isLoading.value = false;
      print("result : ${result}");
      if(result['result'] == false){
        signupError.value = result['message'];
      }else if(result['result'] == true){
        clearForm();
        successDialog();
      }
    }else{
      confirmPasswordError.value = 'Confirm Password Not Match';
    }
  }

  clearForm(){
    userNameController.clear();
    emailController.clear();
    phoneNoController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }
  clearVariables(){
    confirmPasswordError.value = '';
    signupError.value = '';

  }

  void startDelayedNavigation() async {
    if(userNameController.text.isEmpty){
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
          textTitle: 'enter your name first',
          fontFamily: poppinsMedium,
          fontSize: Get.height * 0.015,
          color: Colors.black,
        ),

      );
    }
    else if(emailController.text.isEmpty){
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
          textTitle: 'enter your email',
          fontFamily: poppinsMedium,
          fontSize: Get.height * 0.015,
          color: Colors.black,
        ),
      );
    } else if(phoneNoController.text.isEmpty){
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
          textTitle: 'enter your phone number',
          fontFamily: poppinsMedium,
          fontSize: Get.height * 0.015,
          color: Colors.black,
        ),
      );
    } else if(passwordController.text.isEmpty){
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
          textTitle: 'enter your password',
          fontFamily: poppinsMedium,
          fontSize: Get.height * 0.015,
          color: Colors.black,
        ),
      );
    } else if(confirmPasswordController.text.isEmpty){
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
          textTitle: 'enter your confirm password',
          fontFamily: poppinsMedium,
          fontSize: Get.height * 0.015,
          color: Colors.black,
        ),
      );
    }
    else {
      Get.dialog(
          const Center(
              child: CircularProgressIndicator(
                color: homeBoxColor,
              )
          ));
      await Future.delayed(const Duration(seconds: 2));
      Get.back();
      Get.toNamed(kLoginScreen);
    }
  }

}