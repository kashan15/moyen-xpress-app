import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/custom_richtext.dart';
import 'package:moyen_xpress_app/components/custom_textfield.dart';
import 'package:moyen_xpress_app/components/custom_textfield1.dart';
import 'package:moyen_xpress_app/components/test_class.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import 'package:moyen_xpress_app/utils/theme.dart';
import '../../components/custom_social_icons_container.dart';
import '../../constants/validations.dart';
import '../../controller/login_screen_controller.dart';

class LoginScreenNew extends GetView<LoginScreenController> {
   LoginScreenNew({Key? key}) : super(key: key);

  bool isLoading = false;

   // void onLoginButtonPressed() {
   //   controller.startDelayedNavigation();
   //   Get.delete<LoginScreenController>();
   // }






   @override


  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageUtils.loginBackground),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
              child: Column(
                children: [
                  SizedBox(height: sizeH(45),),
                  /// For Headings
                  Row(
                      children: [
                    CustomRichText(
                      textSpan1: 'Welcome Back To',
                      fontFamily1: poppinsLight,
                      fontSize1: Get.height * 0.02,
                      color1: Colors.white,
                      textAlign1: TextAlign.start,
                      textSpan2: '\nMoyenxpress',
                      fontFamily2: poppinsBold,
                      fontSize2: Get.height * 0.04,
                      color2: Colors.white,
                      textAlign2: TextAlign.start,

                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(right: Get.width * 0.2),
                    child: const Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    children: [
                      TextWidget1(
                        textTitle: 'Please Login To Your Existing Account.',
                        style: CustomTheme.headingWhite,
                      )
                    ],
                  ),
                  //////////////////////////////////

                  /// For Text Fields
                  Form(
                      key:controller.formKey,
                      child: Obx(
                            () =>
                            Column(
                              children: [
                                SizedBox(height: sizeH(50),),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Get.width * 0.025
                                  ),
                                  child: Row(
                                    children: [
                                      TextWidget1(
                                        textTitle: 'Email Address',
                                        style: CustomTheme.normalTextLogin,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: sizeH(5),),

                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                                  // height: Get.height * 0.075,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: textFieldColor.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(
                                          Get.width * 0.025
                                      ),
                                      border: Border.all(
                                          color: Colors.white,
                                          width: Get.width * 0.002
                                      )
                                  ),
                                  child:
                                  CustomTextField1(
                                    hintText: 'moyenxpress@gmail.com',
                                    hintFontSize: Get.height * 0.0175,
                                    textColor: Colors.white,
                                    hintColor: Colors.white.withOpacity(0.6),
                                    fontSize: Get.height * 0.0175,
                                    cursorColor: Colors.white,
                                    validation: Validations.emailValidation,
                                    contentPadding: EdgeInsets.all(Get.width * 0.055),
                                    controller: controller.email,
                                  ),
                                ),

                                // Container(
                                //     margin: const EdgeInsets.symmetric(horizontal: 10),
                                //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                                //     decoration: BoxDecoration(
                                //         color: textFieldColor.withOpacity(0.8),
                                //         borderRadius: BorderRadius.circular(
                                //             Get.width * 0.025
                                //         ),
                                //         border: Border.all(
                                //             color: Colors.white,
                                //             width: Get.width * 0.002
                                //         )
                                //     ),
                                //     child:CustomTextField(
                                //     validation:Validations.passwordValidation,
                                //     inputType: TextInputType.visiblePassword,
                                //     textEditingController: controller.password,
                                //     obscureText: !controller.isPasswordVisible.value,
                                //     suffixIcon: controller.getVisibleIcon(),
                                //     // prefixIcon:
                                //     // Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                //     title: "Password:",
                                //     )
                                // ),

                                SizedBox(height: sizeH(8),),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Get.width * 0.025
                                  ),
                                  child: Row(
                                    children: [
                                      TextWidget1(
                                        textTitle: 'Password',
                                        style: CustomTheme.normalTextLogin,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: sizeH(5),),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                                  padding: EdgeInsets.only(right: Get.width * 0.02),

                                  // height: Get.height * 0.075,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: textFieldColor.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(
                                          Get.width * 0.025
                                      ),
                                      border: Border.all(
                                          color: Colors.white,
                                          width: Get.width * 0.002
                                      )
                                  ),
                                  child: CustomTextField1(
                                    hintText: '123456789',
                                    hintFontSize: Get.height * 0.0175,
                                    textColor: Colors.white,
                                    hintColor: Colors.white.withOpacity(0.6),
                                    fontSize: Get.height * 0.0175,
                                    cursorColor: Colors.white,
                                    contentPadding: EdgeInsets.all(Get.width * 0.055),
                                    inputType: TextInputType.visiblePassword,
                                    validation: Validations.passwordValidation,
                                    controller: controller.password,
                                    obscureText: !controller.isPasswordVisible.value,
                                    suffixIcon: controller.getVisibleIcon(),
                                  ),
                                )
                              ],
                            ),
                      )
                  ),
                  SizedBox(height: sizeH(10),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: TextWidget(
                            textTitle: 'Forgot Password?',
                            fontFamily: poppinsRegular,
                            fontSize: Get.height * 0.02,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: sizeH(25)),
                     CustomButton(
                        isSelected: false,
                      padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                      margin: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                      color: homeBoxColor,
                      title: 'Signin',
                      fontSize: Get.height * 0.02,
                      fontFamily: poppinsMedium,
                      textColor: Colors.white,
                      borderRadius: Get.width * 0.015,
                      onTap: () {
                        controller.startDelayedNavigation();
                      }
                    ),

                  SizedBox(height: sizeH(15),),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(kSignupScreen);
                    },
                    child: TextWidget(
                      textTitle: 'Create An Account',
                      fontFamily: poppinsRegular,
                      fontSize: Get.height * 0.02,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(height: sizeH(85),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        SizedBox(width: sizeW(10),),
                        TextWidget1(
                            textTitle: 'Or',
                            style: CustomTheme.headingWhiteBold
                        ),
                        SizedBox(width: sizeW(10),),
                        const Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: sizeH(12),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomSocialContainer(
                        onTap: (){},
                        image: ImageUtils.facebookIcon1,),
                      SizedBox(width: sizeW(10),),
                      CustomSocialContainer(
                        onTap: (){},
                        image: ImageUtils.gmailIcon1,),
                      SizedBox(width: sizeW(10),),
                      CustomSocialContainer(
                        onTap: (){},
                        image: ImageUtils.appleIcon1,),
                      SizedBox(width: sizeW(10),),
                    ],
                  ),
                  SizedBox(height: sizeH(5),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
