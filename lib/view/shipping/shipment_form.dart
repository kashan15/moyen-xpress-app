import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/components/custom_dialog.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/view/orders/shipping%20order/shipping_orders.dart';
import 'package:moyen_xpress_app/view/shipping/shipping_From.dart';
import '../../components/custom_grid_button.dart';
import '../../components/custom_richtext.dart';
import '../../components/custom_textfield.dart';
import '../../components/new_custom_text_field_dropdown.dart';
import '../../components/rating_widget.dart';
import '../../components/test_class.dart';
import '../../controller/about_screen_controller.dart';
import '../../controller/shipment_form_controller.dart';
import '../../controller/store_home_controller.dart';
import '../../controller/store_screen_controller.dart';
import '../../utils/font_utils.dart';
import '../../utils/lang_string_util.dart';
import '../../utils/route_utils.dart';
import '../../utils/text_styles.dart';
import '../../utils/theme.dart';


class ShipmentForm extends GetView<ShipmentFormController> {
  bool? check = false;
  ShipmentForm({super.key,
    this.check
  });

  bool willPop = true;
  int select = 0;

  late String currentSelectedList1 = selectionList1.first;
  late String currentSelectedList2 = selectionList2.first;
  late String currentSelectedList3 = selectionList3.first;
  late String currentSelectedList4 = selectionList4.first;
  late String currentSelectedList5 = selectionList5.first;

  // Map<String, String> selectionList1 = {
  //   "Customer",
  //
  // };

   List<String> selectionList1 = ["Customer 1", "Customer 2", "Customer 3"];
  List<String> selectionList2 = ["Domestic 1", "Domestic 2", "Domestic 3"];
  List<String> selectionList3 = ["Documents 1", "Documents 2", "Documents 3"];
  List<String> selectionList4 = ["Wallet 1", "Wallet 2", "Wallet 3"];
  List<String> selectionList5 = ["Air Freight 1", "Air Freight 2", "Air Freight 3"];

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
            heading: 'Shipping',
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
                  child: Column(
                      children:[
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                          TextWidget1(
                            textTitle: 'Shipment Form:',
                            style: CustomTheme.heading,
                          )
                        ),
                        SizedBox(height: _height * 0.015,),

                        Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget1(
                            textTitle: 'I Am A:',
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
                        SizedBox(height: _height * 0.015,),

                        Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget1(
                            textTitle: 'My Shipping Is:',
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
                            selectedItem: currentSelectedList2,
                            items: selectionList2.toList(),
                            hint: selectLanguageSUtil.tr,
                            onChanged: (val) {
                              currentSelectedList2 = val!;
                            },
                            autoFocusSearchBox: false,

                          ),
                        ),
                        SizedBox(height: _height * 0.015,),

                        Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget1(
                            textTitle: 'I Want To Ship:',
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
                            selectedItem: currentSelectedList3,
                            items: selectionList3.toList(),
                            hint: selectLanguageSUtil.tr,
                            onChanged: (val) {
                              currentSelectedList3 = val!;
                              // print();
                              // Get.updateLocale(const Locale('es'));
                            },
                            autoFocusSearchBox: false,

                          ),
                        ),
                        SizedBox(height: _height * 0.015,),

                        Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget1(
                            textTitle: 'Refund Type:',
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
                            selectedItem: currentSelectedList4,
                            items: selectionList4.toList(),
                            hint: selectLanguageSUtil.tr,
                            onChanged: (val) {
                              currentSelectedList4 = val!;
                              // print();
                              // Get.updateLocale(const Locale('es'));
                            },
                            autoFocusSearchBox: false,

                          ),
                        ),
                        SizedBox(height: _height * 0.015,),

                        Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget1(
                            textTitle: 'Ship Via:',
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
                            selectedItem: currentSelectedList5,
                            items: selectionList5.toList(),
                            hint: selectLanguageSUtil.tr,
                            onChanged: (val) {
                              currentSelectedList5 = val!;
                              // print();
                              // Get.updateLocale(const Locale('es'));
                            },
                            autoFocusSearchBox: false,

                          ),
                        ),
                        SizedBox(height: _height * 0.025,),

                        CustomButton(
                          isSelected: false,
                          margin: EdgeInsets.zero,
                          width: Get.width,
                          onTap: (){
                            Get.toNamed(kShippingFromScreen);
                          },
                          padding: EdgeInsets.symmetric(
                            // horizontal: _width * 0.05,
                              vertical: _height * 0.015
                          ),
                          title: 'Next',
                          color: buyNow,
                          textColor: Colors.white,
                          fontSize: _height * 0.0175,
                          fontFamily: poppinsRegular,
                          borderRadius: _width * 0.012,
                        ),


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


