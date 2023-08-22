import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/view/auction/auction_products.dart';
import '../../components/custom_dialog.dart';
import '../../components/custom_grid_button.dart';
import '../../components/custom_textfield.dart';
import '../../components/text_widget.dart';
import '../../controller/contact_us_screen_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';
import '../../utils/theme.dart';



class ContactUsScreen extends GetView<ContactUsScreenController> {
  ContactUsScreen({super.key,
  });

  bool willPop = true;



  @override
  Widget build(BuildContext context) {
    controller.globalContext = context;
    return WillPopScope(
      onWillPop: () async{
        return willPop;
      },
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: CustomAppbar1(
              heading: 'Contact US',
            ),
            body: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.015,),

                  /// Banner
                  Container(
                    height: Get.height * 0.2 ,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.03
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            Get.width * 0.02
                        ),
                        image:  const DecorationImage(image: AssetImage(
                            ImageUtils.mapPic
                        ),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(height: Get.height * 0.015,),

                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.06
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                          TextWidget1(
                            textTitle:  'Ask Anything',
                            style: CustomTheme.heading,
                          ),

                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                          TextWidget1(
                            textTitle:  'Ask anything because your single word matter to us.',
                            style: CustomTheme.normalTextBlack,
                          ),

                        ),
                        SizedBox(height: Get.height * 0.015,),


                        Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget1(
                            textTitle: 'Name',
                            style: CustomTheme.shortHeadingMedium,
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 0.75
                            ),
                            height: Get.height * 0.05,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.015
                                ),
                                border: Border.all(
                                    color: Colors.grey,
                                    width: Get.width * 0.002
                                )
                            ),
                            child: CustomTextField(
                              title: '',
                              inputBorder: InputBorder.none,
                              inputType: TextInputType.text,
                              textEditingController: controller.nameController,
                              // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                            )
                        ),
                        SizedBox(height: Get.height * 0.0175,),

                        Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget1(
                            textTitle: 'Email',
                            style: CustomTheme.shortHeadingMedium,
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 0.75
                            ),
                            height: Get.height * 0.05,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.015
                                ),
                                border: Border.all(
                                    color: Colors.grey,
                                    width: Get.width * 0.002
                                )
                            ),
                            child: CustomTextField(
                                title: '',
                                inputBorder: InputBorder.none,
                                inputType: TextInputType.text,
                                textEditingController: controller.emailController
                              // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                            )
                        ),

                        SizedBox(height: Get.height * 0.0175,),
                        Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget1(
                            textTitle: 'Phone Number',
                            style: CustomTheme.shortHeadingMedium,
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 0.75
                            ),
                            height: Get.height * 0.05,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.015
                                ),
                                border: Border.all(
                                    color: Colors.grey,
                                    width: Get.width * 0.002
                                )
                            ),
                            child: CustomTextField(
                                title: '',
                                inputBorder: InputBorder.none,
                                inputType: TextInputType.phone,
                                textEditingController: controller.phoneController
                              // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                            )
                        ),

                        SizedBox(height: Get.height * 0.0175,),
                        Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget1(
                            textTitle: 'Message',
                            style: CustomTheme.shortHeadingMedium,
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 0.75
                            ),
                            height: Get.height * 0.1,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.015
                                ),
                                border: Border.all(
                                    color: Colors.grey,
                                    width: Get.width * 0.002
                                )
                            ),
                            child: CustomTextField(
                                title: '',
                                inputBorder: InputBorder.none,
                                inputType: TextInputType.text,
                                textEditingController: controller.messageController
                              // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                            )
                        ),
                        SizedBox(height: Get.height * 0.075,),

                        CustomButton(
                          isSelected: false,
                          onTap: (){
                            Get.dialog(
                                CustomDialogSimple(
                                    title: 'Submitted',
                                    description: 'your message has been submitted',
                                    okTap: true)
                            );
                          },
                          margin: EdgeInsets.zero,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            // horizontal: _width * 0.05,
                              vertical: Get.height * 0.0125
                          ),
                          title: 'Submit',
                          color: buyNow,
                          textColor: Colors.white,
                          fontSize: Get.height * 0.0175,
                          fontFamily: poppinsRegular,
                          borderRadius: Get.width * 0.012,
                        ),
                      ],
                    ),
                  )




                ],
              ),
            )
        ),
      ),
    );
  }
}