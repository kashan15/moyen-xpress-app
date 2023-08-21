import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/view/auction/auction_products.dart';
import '../../components/custom_grid_button.dart';
import '../../components/custom_textfield.dart';
import '../../components/text_widget.dart';
import '../../controller/technician_search_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';
import '../../utils/theme.dart';



class TechnicianSearchScreen extends GetView<TechnicianSearchController> {
  TechnicianSearchScreen({super.key,

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
            heading: 'Technician',
          ),
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.015,),

                /// Banner
                Container(
                  height: Get.height * 0.25 ,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          Get.width * 0.02
                      ),
                      image:  const DecorationImage(image: AssetImage(
                          ImageUtils.technicianBanner
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
                          textTitle:  'Select Your Area',
                          style: CustomTheme.heading,
                        ),

                      ),
                      SizedBox(height: Get.height * 0.015,),


                      Align(
                        alignment: Alignment.topLeft,
                        child: TextWidget1(
                          textTitle: 'Country',
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
                            textEditingController: controller.countryController,
                            // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                          )
                      ),
                      SizedBox(height: Get.height * 0.0175,),

                      Align(
                        alignment: Alignment.topLeft,
                        child: TextWidget1(
                          textTitle: 'State',
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
                              textEditingController: controller.stateController
                            // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                          )
                      ),

                      SizedBox(height: Get.height * 0.0175,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextWidget1(
                          textTitle: 'City',
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
                              textEditingController: controller.cityController
                            // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                          )
                      ),
                      SizedBox(height: Get.height * 0.225,),

                      CustomButton(
                        isSelected: false,
                        onTap: (){
                          Get.to(AuctionScreen(
                            check: true,
                          ));
                        },
                        margin: EdgeInsets.zero,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          // horizontal: _width * 0.05,
                            vertical: Get.height * 0.0125
                        ),
                        title: 'Next',
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