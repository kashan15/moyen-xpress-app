import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_textfield.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';

import '../../components/custom_grid_button.dart';
import '../../components/custom_richtext.dart';
import '../../components/custom_social_icons_container.dart';
import '../../components/custom_textfield1.dart';
import '../../components/text_widget.dart';
import '../../constants/validations.dart';
import '../../controller/signup_screen_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/theme.dart';

class SignupScreenNew extends GetView<SignupScreenController> {
  const SignupScreenNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageUtils.loginBackground),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.05,),
                /// For Headings
                Row(
                    children: [
                      CustomRichText(
                        textSpan1: 'Lets Get',
                        fontFamily1: poppinsLight,
                        fontSize1: Get.height * 0.02,
                        color1: Colors.white,
                        textAlign1: TextAlign.start,
                        textSpan2: '\nStarted!',
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
                      textTitle: 'Create Your Account To Moyenxpress\nAnd Access To All Our Amazing Features.',
                      style: CustomTheme.headingWhite,
                    )
                  ],
                ),
                //////////////////////////////////

                /// For Text Fields
                Form(
                    key:controller.formKey,
                    child:
                          Column(
                            children: [
                              SizedBox(height: Get.height * 0.025,),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Get.width * 0.025
                                ),
                                child: Row(
                                  children: [
                                    TextWidget1(
                                      textTitle: 'Enter You Name',
                                      style: CustomTheme.normalTextLogin,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: Get.height * 0.01,),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                                height: Get.height * 0.075,
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
                                  textColor: Colors.white,
                                  fontSize: Get.height * 0.0175,
                                  cursorColor: Colors.white,
                                  validation: Validations.emailValidation,
                                  contentPadding: EdgeInsets.all(Get.width * 0.055),
                                  controller: controller.userNameController,
                                ),
                              ),

                              SizedBox(height: Get.height * 0.01,),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Get.width * 0.025
                                ),
                                child: Row(
                                  children: [
                                    TextWidget1(
                                      textTitle: 'Email',
                                      style: CustomTheme.normalTextLogin,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: Get.height * 0.01,),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: Get.width * 0.025
                                ),
                                padding: EdgeInsets.only(
                                    right: Get.width * 0.02
                                ),
                                height: Get.height * 0.075,
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
                                  textColor: Colors.white,
                                  fontSize: Get.height * 0.0175,
                                  cursorColor: Colors.white,
                                  contentPadding: EdgeInsets.all(Get.width * 0.055),
                                  inputType: TextInputType.visiblePassword,
                                  validation: Validations.passwordValidation,
                                  controller: controller.emailController,
                                ),
                              ),

                              SizedBox(height: Get.height * 0.01,),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Get.width * 0.025
                                ),
                                child: Row(
                                  children: [
                                    TextWidget1(
                                      textTitle: 'Mobile Number',
                                      style: CustomTheme.normalTextLogin,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: Get.height * 0.01,),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                                height: Get.height * 0.075,
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
                                  textColor: Colors.white,
                                  fontSize: Get.height * 0.0175,
                                  cursorColor: Colors.white,
                                  validation: Validations.emailValidation,
                                  contentPadding: EdgeInsets.all(Get.width * 0.055),
                                  controller: controller.phoneNoController,
                                ),
                              ),

                              SizedBox(height: Get.height * 0.01,),
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
                              SizedBox(height: Get.height * 0.01,),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                                height: Get.height * 0.075,
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
                                  textColor: Colors.white,
                                  fontSize: Get.height * 0.0175,
                                  cursorColor: Colors.white,
                                  validation: Validations.emailValidation,
                                  contentPadding: EdgeInsets.all(Get.width * 0.055),
                                  controller: controller.passwordController,
                                ),
                              ),

                              SizedBox(height: Get.height * 0.01,),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Get.width * 0.025
                                ),
                                child: Row(
                                  children: [
                                    TextWidget1(
                                      textTitle: 'Confirm Password',
                                      style: CustomTheme.normalTextLogin,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: Get.height * 0.01,),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                                height: Get.height * 0.075,
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
                                  textColor: Colors.white,
                                  fontSize: Get.height * 0.0175,
                                  cursorColor: Colors.white,
                                  validation: Validations.emailValidation,
                                  contentPadding: EdgeInsets.all(Get.width * 0.055),
                                  controller: controller.confirmPasswordController,
                                ),
                              ),
                            ],
                          ),
                ),
                SizedBox(height: Get.height * 0.025,),
                CustomButton(
                  isSelected: false,
                  padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                  color: homeBoxColor,
                  title: 'Signup',
                  fontSize: Get.height * 0.02,
                  fontFamily: poppinsMedium,
                  textColor: Colors.white,
                  borderRadius: Get.width * 0.015,
                  onTap: (){},
                ),
                SizedBox(height: Get.height * 0.01,),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(kLoginScreen);
                  },
                  child: TextWidget(
                    textTitle: 'Already have An Account',
                    fontFamily: poppinsRegular,
                    fontSize: Get.height * 0.02,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: Get.height * 0.015,),
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
                      SizedBox(width: Get.width * 0.03,),
                      TextWidget1(
                          textTitle: 'Or',
                          style: CustomTheme.headingWhiteBold
                      ),
                      SizedBox(width: Get.width * 0.03,),
                      const Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSocialContainer(
                      onTap: (){},
                      image: ImageUtils.facebookIcon1,),
                    SizedBox(width: Get.width * 0.035,),
                    CustomSocialContainer(
                      onTap: (){},
                      image: ImageUtils.gmailIcon1,),
                    SizedBox(width: Get.width * 0.035,),
                    CustomSocialContainer(
                      onTap: (){},
                      image: ImageUtils.appleIcon1,),
                    SizedBox(width: Get.width * 0.035,),
                  ],
                ),
                SizedBox(height: Get.height * 0.025,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
