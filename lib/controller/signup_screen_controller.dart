import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/models/signup_model.dart';
import 'package:moyen_xpress_app/network/signup_api.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';

import '../constants/dialogue_box.dart';
import '../models/signup_screen_model.dart';
import '../services/provider.dart';
import '../utils/color_utils.dart';
class SignupScreenController extends GetxController{
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  RxString  confirmPasswordError = ''.obs;
  RxString  signupError = ''.obs;

  ApiProvider apiProvider = ApiProvider();

  SignupModel signupModel = SignupModel();
  RxBool isLoading = false.obs;

  // void signup()async {
  //   if(passwordController.text == confirmPasswordController.text){
  //     isLoading.value = true;
  //     clearVariables();
  //     SignupScreenModel model = SignupScreenModel(
  //         name: userNameController.text,
  //         email: emailController.text,
  //         password: passwordController.text
  //     );
  //     var result =  await apiProvider.signupApi(model);
  //     isLoading.value = false;
  //     print("result : ${result}");
  //     if(result['result'] == false){
  //       signupError.value = result['message'];
  //     }else if(result['result'] == true){
  //       clearForm();
  //       successDialog();
  //     }
  //   }else{
  //     confirmPasswordError.value = 'Confirm Password Not Match';
  //   }
  // }

  // createAccount() {
  //   if (signupFormKey.currentState!.validate()) {
  //     if(userNameController.text.isNotEmpty && emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
  //       isLoading.value = true;
  //       getSignupResponse();
  //     } else {
  //       if (kDebugMode) {
  //         print("registration documents false");
  //       }
  //       Get.snackbar(
  //           "Registration Failed!", "Please upload verification documents",
  //           snackPosition: SnackPosition.BOTTOM);
  //     }
  //   } else {
  //     if (kDebugMode) {
  //       print("registration validation false");
  //     }
  //   }
  // }

  createAccount() {
    if(userNameController.text.isEmpty){
      showErrorMessage(
          'Please',
          'Enter your name first'
      );
    } else if(emailController.text.isEmpty){
      showErrorMessage(
          'Please',
          'Enter your email first'
      );
    } else if(passwordController.text.isEmpty){
      showErrorMessage(
          'Please',
          'Enter your password first'
      );
    } else if(confirmPasswordController.text.isEmpty){
      showErrorMessage(
          'Please',
          'Confirmed your password'
      );
    }
    else if(passwordController.text != confirmPasswordController.text){
      showErrorMessage(
          'Please',
          'Password & confirm password does not match'
      );
    }

    else if(userNameController.text.isNotEmpty && emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
      isLoading.value = true;
      // Get.dialog(
      //     const Center(
      //         child: CircularProgressIndicator(
      //           color: Colors.white,
      //         )
      //     ));
      getSignupResponse();
    }

  }

  getSignupResponse(){
    SignupAPI.getSignupResponse(
        name: userNameController.text,
        email: emailController.text,
        password: passwordController.text
    ).then((value) {

      signupModel = value;

      if(signupModel.result == true){
        isLoading.value = false;

        // Get.snackbar(
        //     "Registered!", signupModel.message ?? "Registration completed successfully",
        //     snackPosition: SnackPosition.BOTTOM);

        showErrorMessage(
            'Registered!', signupModel.message ??
            'Registration completed successfully'
        );

        Get.toNamed(kLoginScreen);

        if (kDebugMode) {
          log("loginButtonResponse ${signupModel.toJson()} ");
        }
      }

      // if login is not true show snackbar with message
      else if (signupModel.result == false) {
        isLoading.value = false;
        Get.snackbar(
            "Registration has failed Failed!", signupModel.message.toString(),
            snackPosition: SnackPosition.BOTTOM);
      }

      //no login response
      else {
        Get.snackbar("Registration Failed!", "Something Went Wrong",
            snackPosition: SnackPosition.BOTTOM);
      }

      //remove loader
      isLoading.value = false;
    });
    if (kDebugMode) {
      print("xyyzz");
    }
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