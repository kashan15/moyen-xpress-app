import 'package:dropdown_search/dropdown_search.dart';
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
import '../../components/new_custom_text_field_dropdown.dart';
import '../../components/rating_widget.dart';
import '../../components/test_class.dart';
import '../../controller/about_screen_controller.dart';
import '../../controller/shipment_description_controller.dart';
import '../../controller/shipping_From_controller.dart';
import '../../controller/store_home_controller.dart';
import '../../controller/store_screen_controller.dart';
import '../../utils/font_utils.dart';
import '../../utils/lang_string_util.dart';
import '../../utils/route_utils.dart';
import '../../utils/theme.dart';


class ShipmentDescription extends GetView<ShipmentDescriptionController> {
  ShipmentDescription({super.key,

  });

  bool willPop = true;
  bool tap = false;

  late String currentSelectedList1 = selectionList1.first;

  List<String> selectionList1 = ["Chair 1", "Chair 2", "Chair 3"];


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
                      Column(
                          children:[
                            Align(
                              alignment: Alignment.topLeft,
                              child:
                              TextWidget1(
                                textTitle: 'Shipment Description:',
                                style: CustomTheme.heading,
                              ),

                            ),
                            SizedBox(height: _height * 0.015,),


                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Shipping Products:',
                                style: CustomTheme.shortHeadingMedium,
                              ),
                            ),

                            Dropdown1(
                              dropdown: DropdownSearch<String>(
                                emptyBuilder: (context, searchEntry) => Center(
                                  child: Material(
                                    child: Text(
                                      noDataSUtil.tr,
                                      selectionColor: Colors.white,
                                      style: CustomTheme.normalText,
                                    ),
                                  ),
                                ),
                                dropDownButton:
                                Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.grey, size: sizeW(20)),
                                mode: Mode.MENU,
                                // enabled: controller.isCityEnabled.value,
                                showSelectedItem: true,
                                showSearchBox: false,
                                popupBackgroundColor: Colors.white,
                                selectedItem: currentSelectedList1,
                                items: selectionList1.toList(),
                                hint: selectLanguageSUtil.tr,
                                onChanged: (val) {
                                  currentSelectedList1 = val!;
                                  // print();
                                  // Get.updateLocale(const Locale('es'));
                                },
                                autoFocusSearchBox: false,

                              ),
                            ),
                            SizedBox(height: _height * 0.0175,),

                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Product Name',
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
                                    textEditingController: controller.productNameController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Weight (KG)',
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
                                    textEditingController: controller.weightController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Length (CM)',
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
                                    textEditingController: controller.lengthController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Width (CM)',
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
                                    textEditingController: controller.widthController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Height (CM)',
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
                                    textEditingController: controller.heightController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Quantity',
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
                                    textEditingController: controller.quantityController
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
                                    textEditingController: controller.postalCodeController
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
                                    textEditingController: controller.businessEmailController
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
                                    textEditingController: controller.businessPhoneController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Describe! What is in the box?',
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
                                    textEditingController: controller.describeBoxController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Value Of Parcel (\$)',
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
                                    textEditingController: controller.parcelValueController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.0175,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget1(
                                textTitle: 'Set Pickup Date',
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
                                    textEditingController: controller.pickupDateController
                                  // prefixIcon: Image.asset("assets/images/key.png",color:Color(kPrimaryColor)),
                                )
                            ),

                            SizedBox(height: _height * 0.045,),
                            CustomButton(
                              isSelected: false,
                              onTap: (){

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


              ],
            ),
          ),
        ),
      ),
    );
  }
}