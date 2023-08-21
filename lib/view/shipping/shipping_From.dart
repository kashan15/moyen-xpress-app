import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:like_button/like_button.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/components/custom_dialog.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/view/orders/shipping%20order/shipping_orders.dart';
import '../../components/custom_grid_button.dart';
import '../../components/custom_richtext.dart';
import '../../components/custom_textfield.dart';
import '../../components/rating_widget.dart';
import '../../controller/about_screen_controller.dart';
import '../../controller/shipping_From_controller.dart';
import '../../controller/store_home_controller.dart';
import '../../controller/store_screen_controller.dart';
import '../../utils/font_utils.dart';
import '../../utils/route_utils.dart';
import '../../utils/theme.dart';


class ShippingFromScreen extends GetView<ShippingFromController> {
  ShippingFromScreen({super.key,

  });

  bool willPop = true;
  bool tap = false;



  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;
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
            heading: 'Shipping From',
          ),
          body: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: _height * 0.015,),

                /// Banner
                Container(
                  height: Get.height * 0.25 ,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: _width * 0.03
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          _width * 0.02
                      ),
                      image:  const DecorationImage(image: AssetImage(
                          ImageUtils.shippingBanner
                      ),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(height: _height * 0.015,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.06
                  ),
                  child:
                     Obx(() =>
                        Column(
                          children:[
                            Align(
                              alignment: Alignment.topLeft,
                              child:
                                 TextWidget1(
                                  textTitle:  controller.isTapped.value
                                      ? "To:"
                                      : "From:",
                                  style: CustomTheme.heading,
                                ),

                            ),
                            SizedBox(height: _height * 0.015,),


                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Name',
                                style: CustomTheme.shortHeadingMedium,
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                                padding: EdgeInsets.symmetric(
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
                                  textEditingController: controller.isTapped.value ?
                                  controller.nameControllerTo : controller.nameController,
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),
                            SizedBox(height: _height * 0.0175,),

                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Email',
                                style: CustomTheme.shortHeadingMedium,
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                                padding: EdgeInsets.symmetric(
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
                                  textEditingController: controller.isTapped.value ?
                                  controller.emailControllerTo : controller.emailController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Phone Number',
                                style: CustomTheme.shortHeadingMedium,
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                                padding: EdgeInsets.symmetric(
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
                                  textEditingController: controller.isTapped.value ?
                                  controller.phoneControllerTo : controller.phoneController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Country',
                                style: CustomTheme.shortHeadingMedium,
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                                padding: EdgeInsets.symmetric(
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
                                  textEditingController: controller.isTapped.value ?
                                  controller.countryControllerTo : controller.countryController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'State',
                                style: CustomTheme.shortHeadingMedium,
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                                padding: EdgeInsets.symmetric(
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
                                    textEditingController: controller.isTapped.value ?
                                    controller.stateControllerTo : controller.stateController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'City',
                                style: CustomTheme.shortHeadingMedium,
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                                padding: EdgeInsets.symmetric(
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
                                    textEditingController: controller.isTapped.value ?
                                    controller.cityControllerTo : controller.cityController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Postal Code',
                                style: CustomTheme.shortHeadingMedium,
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                                padding: EdgeInsets.symmetric(
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
                                  textEditingController: controller.isTapped.value ?
                                  controller.postalCodeControllerTo : controller.postalCodeController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Business Email (Optional)',
                                style: CustomTheme.shortHeadingMedium,
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                                padding: EdgeInsets.symmetric(
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
                                    inputType: TextInputType.emailAddress,
                                    textEditingController: controller.isTapped.value ?
                                    controller.businessEmailControllerTo : controller.businessEmailController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Business Phone Number (Optional)',
                                style: CustomTheme.shortHeadingMedium,
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                                padding: EdgeInsets.symmetric(
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
                                    textEditingController: controller.isTapped.value ?
                                    controller.businessPhoneControllerTo : controller.businessPhoneController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Address 1',
                                style: CustomTheme.shortHeadingMedium,
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                                padding: EdgeInsets.symmetric(
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
                                    textEditingController: controller.isTapped.value ?
                                    controller.address1ControllerTo : controller.address1Controller
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Address 2 (Optional)',
                                style: CustomTheme.shortHeadingMedium,
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06,),
                                padding: EdgeInsets.symmetric(
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
                                    textEditingController: controller.isTapped.value ?
                                    controller.address2ControllerTo : controller.address2Controller
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.045,),
                            CustomButton(
                              isSelected: false,
                              onTap: (){
                                controller.toggleText();
                              },
                              margin: EdgeInsets.zero,
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                // horizontal: _width * 0.05,
                                  vertical: _height * 0.0125
                              ),
                              title: 'Next',
                              color: buyNow,
                              textColor: Colors.white,
                              fontSize: _height * 0.0175,
                              fontFamily: poppinsRegular,
                              borderRadius: _width * 0.012,
                            ),

                            SizedBox(height: _height * 0.025,),
                          ] ),
                     ),

                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}