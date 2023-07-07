import 'dart:io';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/components/theme_container.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
import 'package:moyen_xpress_app/controller/settings_screen_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';

import '../../../components/custom_settings_button.dart';
import '../../../components/new_custom_text_field_dropdown.dart';
import '../../../components/test_class.dart';
import '../../../utils/lang_string_util.dart';
import '../../../utils/storage_utils.dart';
import '../../../utils/text_styles.dart';


// class SettingsScreen extends GetView<SettingsController> {
//   SettingsScreen({
//     super.key,
//   });
//
//   bool willPop = true;
//
//   late String currentCurrency = "USD";
//   late String currentLanguage = "English";
//   late String currentLanguageCode = "en";
//
//
//   @override
//   Widget build(BuildContext context) {
//     double _height = MediaQuery.of(context).size.height;
//     double _width = MediaQuery.of(context).size.width;
//     controller.globalContext = context;
//     return WillPopScope(
//       onWillPop: () async {
//         return willPop;
//       },
//       child: SafeArea(
//         top: false,
//         bottom: false,
//         child: Scaffold(
//             backgroundColor: backgroundColor,
//           body: Column(
//             children: [
//               SizedBox(
//                 height: _height * 0.05,
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                       padding: EdgeInsets.only(left: _width * 0.025),
//                       constraints: const BoxConstraints(),
//                       onPressed: () {
//                         Get.back();
//                       },
//                       icon: Icon(
//                         Icons.arrow_back_ios,
//                         size: _height * 0.025,
//                       )),
//                   Expanded(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           TextWidget(
//                             textTitle: 'Settings',
//                             fontWeight: FontWeight.w700,
//                             fontSize: _height * 0.025,
//                             color: Colors.black,
//                           ),
//                         ],
//                       ))
//                 ],
//               ),
//
//               SizedBox(height: _height * 0.05,),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                 horizontal: _width * 0.04
//               ),
//                 child: Row(
//                   children: [
//                     TextWidget(
//                       textTitle: 'Notifications',
//                       fontWeight: FontWeight.w700,
//                       fontSize: _height * 0.02,
//                       color: Colors.black,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: _height * 0.02,),
//               SettingsContainer(
//                 color: Colors.white,
//                 borderRadius: _width * 0.02,
//
//                 title1: 'ON',
//                 title2: 'OFF',
//                 fontSize: _height * 0.015,
//                 fontFamily: poppinsSemiBold,
//               ),
//
//               SizedBox(height: _height * 0.05,),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: _width * 0.04
//                 ),
//                 child: Row(
//                   children: [
//                     TextWidget(
//                       textTitle: 'Messages',
//                       fontWeight: FontWeight.w700,
//                       fontSize: _height * 0.02,
//                       color: Colors.black,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: _height * 0.02,),
//               SettingsContainer(
//                 color: Colors.white,
//                 borderRadius: _width * 0.02,
//                 title1: 'Seller Promotional Messages',
//                 title2: 'Seller Promotional Messages',
//                 fontSize: _height * 0.015,
//                 fontFamily: poppinsSemiBold,
//               ),
//
//               SizedBox(height: _height * 0.05,),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: _width * 0.04
//                 ),
//                 child: Row(
//                   children: [
//                     TextWidget(
//                       textTitle: 'Promotions',
//                       fontWeight: FontWeight.w700,
//                       fontSize: _height * 0.02,
//                       color: Colors.black,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: _height * 0.02,),
//               // ThemeContainer(
//               //   color: Colors.white,
//               //   borderRadius: _width * 0.02,
//               //   title1: 'ON',
//               //   title2: 'OFF',
//               //   fontSize: _height * 0.015,
//               //   fontFamily: poppinsSemiBold,
//               // )
//               SettingsContainer(
//                 color: Colors.white,
//                 borderRadius: _width * 0.02,
//                 title1: 'ON',
//                 title2: 'OFF',
//                 fontSize: _height * 0.015,
//                 fontFamily: poppinsSemiBold,
//               ),
//
//               SizedBox(height: _height * 0.045,),
//               Container(
//                 margin: EdgeInsets.symmetric(
//                     horizontal: _width * 0.04,
//                 ),
//                 padding: EdgeInsets.symmetric(
//                   horizontal: _width * 0.04,
//                   vertical: _height * 0.02
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(
//                     _width * 0.02
//                   ),
//                     boxShadow: [
//                       BoxShadow(
//                           color: Colors.grey.withOpacity(0.2),
//                           blurRadius: 2,
//                           spreadRadius: 2,
//                           offset: Offset(0, 0))
//                     ]
//                 ),
//
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     TextWidget(
//                       textTitle: 'Language',
//                       fontWeight: FontWeight.w700,
//                       fontSize: _height * 0.02,
//                       color: Colors.black,
//                     ),
//                     Icon(
//                       Icons.arrow_forward_ios,
//                       size: _height * 0.025,
//                     )
//                   ],
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   void getSettings() {
//     Get.defaultDialog(
//       title: settingsSUtil.tr,
//       titleStyle: TextStyle(color: cartBox),
//       content: Form(
//         // key: sendRequestFormKey,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(height: 20),
//
//               // change Language
//               Dropdown(
//                 dropdown: DropdownSearch<String>(
//                   emptyBuilder: (context, searchEntry) => Center(
//                     child: Material(
//                       child: Text(
//                         noDataSUtil.tr,
//                         style: med16.copyWith(color: customGreyColor),
//                       ),
//                     ),
//                   ),
//                   dropDownButton: Icon(Icons.keyboard_arrow_down_outlined,
//                       color: Colors.grey, size: sizeW(20)),
//                   dropdownSearchDecoration: InputDecoration(
//                       border: InputBorder.none,
//                       icon: Icon(Icons.language_outlined,
//                           color: customGreyColor, size: sizeW(15))),
//                   mode: Mode.BOTTOM_SHEET,
//                   // enabled: controller.isCityEnabled.value,
//                   showSelectedItem: true,
//                   showSearchBox: true,
//                   selectedItem: currentLanguage,
//                   items: languageList.keys.toList(),
//                   hint: selectLanguageSUtil.tr,
//                   onChanged: (val) {
//                     currentLanguage = val!;
//                     // print();
//                     // Get.updateLocale(const Locale('es'));
//                   },
//                 ),
//               ),
//               const SizedBox(height: 20),
//
//               // change Currency
//               Dropdown(
//                 dropdown: DropdownSearch<String>(
//                   emptyBuilder: (context, searchEntry) => Center(
//                     child: Material(
//                       child: Text(
//                         noDataSUtil.tr,
//                         style: med16.copyWith(color: customGreyColor),
//                       ),
//                     ),
//                   ),
//                   dropDownButton: Icon(Icons.keyboard_arrow_down_outlined,
//                       color: Colors.grey, size: sizeW(20)),
//                   dropdownSearchDecoration: InputDecoration(
//                       border: InputBorder.none,
//                       icon: Icon(Icons.currency_exchange_outlined,
//                           color: customGreyColor, size: sizeW(15))),
//                   mode: Mode.BOTTOM_SHEET,
//                   // enabled: controller.isCityEnabled.value,
//                   showSelectedItem: true,
//                   showSearchBox: true,
//                   selectedItem: currentCurrency,
//                   items: currencyListNew,
//                   //currencyList.map((e) => e.entries).toList(),
//                   hint: selectCurrencySUtil.tr,
//                   onChanged: (val) {
//                     currentCurrency = val!;
//                     // Get.put(dependency);
//                     // controller.setSelectedCity(val);
//                   },
//                   // selectedItem: "Brazil"
//                 ),
//               ),
//               const SizedBox(height: 20),
//               SizedBox(
//                 height: Get.height * 0.06,
//                 width: Get.width * 0.9,
//                 child: CustomButton(
//                   label: updateSUtil.tr,
//                   isSelected: false,
//                   onTap: () {
//                     final cc = Get.put(CurrencyConversionController());
//                     cc.changeCurrentCurrency(currentCurrency);
//                     _getStorage.write(
//                         languageLocalePUtil, languageList[currentLanguage]!);
//                     Get.updateLocale(Locale(languageList[currentLanguage]!));
//
//                     Get.back();
//                     // sendAskAmountRequest();
//                   },
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


class SettingsScreen1 extends StatefulWidget {
  const SettingsScreen1({Key? key}) : super(key: key);

  @override
  State<SettingsScreen1> createState() => _SettingsScreen1State();
}

class _SettingsScreen1State extends State<SettingsScreen1> {

  final controller = Get.put(SettingsController());
  final _getStorage = GetStorage();
  bool status = false;
  bool isSwitchLoading = false;
  bool willPop = true;
  bool tap =false;

  late String currentCurrency = "USD";
  late String currentLanguage = "English";
  late String currentLanguageCode = "en";

  @override
  void initState() {
    super.initState();
    status = _getStorage.read(accountAvailabilityStatus) == 1 ? true : true;
    currentLanguageCode = _getStorage.read(languageLocalePUtil) ?? "en";
    currentLanguage = languageList.keys.firstWhere(
            (k) => languageList[k] == currentLanguageCode,
        orElse: () => currentLanguage);
    updateCurrency();
  }

  updateCurrency() {
    if (kDebugMode) {
      print("updateCurrency()");
    }

    currentCurrency = _getStorage.read(currencyType) ?? "USD";
    setState(() {});
  }

  Map<String, String> languageList = {
    "English": "en",
    "French": "fr",
    "Spanish": "es",
    // "Urdu": "ur",
  };

  List<String> currencyListNew = [
    "AED",
    "AFN",
    "ALL",
    "AMD",
    "ANG",
    "AOA",
    "ARS",
    "AUD",
    "AWG",
    "AZN",
    "BAM",
    "BBD",
    "BDT",
    "BGN",
    "BHD",
    "BIF",
    "BMD",
    "BND",
    "BOB",
    "BRL",
    "BSD",
    "BTN",
    "BWP",
    "BYN",
    "BZD",
    "CAD",
    "CDF",
    "CHF",
    "CLP",
    "CNY",
    "COP",
    "CRC",
    "CUP",
    "CVE",
    "CZK",
    "DJF",
    "DKK",
    "DOP",
    "DZD",
    "EGP",
    "ERN",
    "ETB",
    "EUR",
    "FJD",
    "FKP",
    "FOK",
    "GBP",
    "GEL",
    "GGP",
    "GHS",
    "GIP",
    "GMD",
    "GNF",
    "GTQ",
    "GYD",
    "HKD",
    "HNL",
    "HRK",
    "HTG",
    "HUF",
    "IDR",
    "ILS",
    "IMP",
    "INR",
    "IQD",
    "IRR",
    "ISK",
    "JEP",
    "JMD",
    "JOD",
    "JPY",
    "KES",
    "KGS",
    "KHR",
    "KID",
    "KMF",
    "KRW",
    "KWD",
    "KYD",
    "KZT",
    "LAK",
    "LBP",
    "LKR",
    "LRD",
    "LSL",
    "LYD",
    "MAD",
    "MDL",
    "MGA",
    "MKD",
    "MMK",
    "MNT",
    "MOP",
    "MRU",
    "MUR",
    "MVR",
    "MWK",
    "MXN",
    "MYR",
    "MZN",
    "NAD",
    "NGN",
    "NIO",
    "NOK",
    "NPR",
    "NZD",
    "OMR",
    "PAB",
    "PEN",
    "PGK",
    "PHP",
    "PKR",
    "PLN",
    "PYG",
    "QAR",
    "RON",
    "RSD",
    "RUB",
    "RWF",
    "SAR",
    "SBD",
    "SCR",
    "SDG",
    "SEK",
    "SGD",
    "SHP",
    "SLE",
    "SOS",
    "SRD",
    "SSP",
    "STN",
    "SYP",
    "SZL",
    "THB",
    "TJS",
    "TMT",
    "TND",
    "TOP",
    "TRY",
    "TTD",
    "TVD",
    "TWD",
    "TZS",
    "UAH",
    "UGX",
    "USD",
    "UYU",
    "UZS",
    "VES",
    "VND",
    "VUV",
    "WST",
    "XAF",
    "XCD",
    "XDR",
    "XOF",
    "XPF",
    "YER",
    "ZAR",
    "ZMW",
    "ZWL",
  ];


  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        return willPop;
      },
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: _height * 0.05,
                ),
                Row(
                  children: [
                    IconButton(
                        padding: EdgeInsets.only(left: _width * 0.025),
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: _height * 0.025,
                        )),
                    Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              textTitle: 'Settings',
                              fontWeight: FontWeight.w700,
                              fontSize: _height * 0.025,
                              color: Colors.black,
                            ),
                          ],
                        ))
                  ],
                ),

                SizedBox(height: _height * 0.05,),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: _width * 0.04
                  ),
                  child: Row(
                    children: [
                      TextWidget(
                        textTitle: 'Notifications',
                        fontWeight: FontWeight.w700,
                        fontSize: _height * 0.02,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: _height * 0.02,),
                SettingsContainer(
                  color: Colors.white,
                  borderRadius: _width * 0.02,

                  title1: 'ON',
                  title2: 'OFF',
                  fontSize: _height * 0.015,
                  fontFamily: poppinsSemiBold,
                ),

                SizedBox(height: _height * 0.05,),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: _width * 0.04
                  ),
                  child: Row(
                    children: [
                      TextWidget(
                        textTitle: 'Messages',
                        fontWeight: FontWeight.w700,
                        fontSize: _height * 0.02,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: _height * 0.02,),
                SettingsContainer(
                  color: Colors.white,
                  borderRadius: _width * 0.02,
                  title1: 'Seller Promotional Messages',
                  title2: 'Seller Promotional Messages',
                  fontSize: _height * 0.015,
                  fontFamily: poppinsSemiBold,
                ),

                SizedBox(height: _height * 0.05,),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: _width * 0.04
                  ),
                  child: Row(
                    children: [
                      TextWidget(
                        textTitle: 'Promotions',
                        fontWeight: FontWeight.w700,
                        fontSize: _height * 0.02,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: _height * 0.02,),
                // ThemeContainer(
                //   color: Colors.white,
                //   borderRadius: _width * 0.02,
                //   title1: 'ON',
                //   title2: 'OFF',
                //   fontSize: _height * 0.015,
                //   fontFamily: poppinsSemiBold,
                // )
                SettingsContainer(
                  color: Colors.white,
                  borderRadius: _width * 0.02,
                  title1: 'ON',
                  title2: 'OFF',
                  fontSize: _height * 0.015,
                  fontFamily: poppinsSemiBold,
                ),

                SizedBox(height: _height * 0.045,),

                GestureDetector(
                  onTap: () => getSettings(context),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: _width * 0.04,
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: _width * 0.04,
                        vertical: _height * 0.02
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            _width * 0.02
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(0, 0))
                        ]
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          textTitle: 'Language',
                          fontWeight: FontWeight.w700,
                          fontSize: _height * 0.02,
                          color: Colors.black,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: _height * 0.025,
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  void getSettings(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    Get.defaultDialog(
      title: settingsSUtil.tr,
      titleStyle: TextStyle(color: cartBox),
      content: Form(
        // key: sendRequestFormKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              // change Language
              Dropdown(
                dropdown: DropdownSearch<String>(
                  emptyBuilder: (context, searchEntry) => Center(
                    child: Material(
                      child: Text(
                        noDataSUtil.tr,
                        style: med16.copyWith(color: customGreyColor),
                      ),
                    ),
                  ),
                  dropDownButton: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.grey, size: sizeW(20)),
                  dropdownSearchDecoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                          Icons.language_outlined,
                          color: customGreyColor, size: sizeW(15))),

                  mode: Mode.MENU,
                  // enabled: controller.isCityEnabled.value,
                  showSelectedItem: true,
                  showSearchBox: true,
                  selectedItem: currentLanguage,
                  items: languageList.keys.toList(),
                  hint: selectLanguageSUtil.tr,
                  onChanged: (val) {
                    currentLanguage = val!;
                    // print();
                    // Get.updateLocale(const Locale('es'));
                  },
                ),
              ),
              const SizedBox(height: 40),

              /// change Currency
              // Dropdown(
              //   dropdown: DropdownSearch<String>(
              //     emptyBuilder: (context, searchEntry) => Center(
              //       child: Material(
              //         child: Text(
              //           noDataSUtil.tr,
              //           style: med16.copyWith(color: customGreyColor),
              //         ),
              //       ),
              //     ),
              //     dropDownButton: Icon(Icons.keyboard_arrow_down_outlined,
              //         color: Colors.grey, size: sizeW(20)),
              //     dropdownSearchDecoration: InputDecoration(
              //         border: InputBorder.none,
              //         icon: Icon(Icons.currency_exchange_outlined,
              //             color: customGreyColor, size: sizeW(15))),
              //     mode: Mode.BOTTOM_SHEET,
              //     // enabled: controller.isCityEnabled.value,
              //     showSelectedItem: true,
              //     showSearchBox: true,
              //     selectedItem: currentCurrency,
              //     items: currencyListNew,
              //     //currencyList.map((e) => e.entries).toList(),
              //     hint: selectCurrencySUtil.tr,
              //     onChanged: (val) {
              //       currentCurrency = val!;
              //       // Get.put(dependency);
              //       // controller.setSelectedCity(val);
              //     },
              //     // selectedItem: "Brazil"
              //   ),
              // ),
              // const SizedBox(height: 20),

              SizedBox(
                child: CustomButton(
                  title: updateSUtil.tr,
                  isSelected: false,
                  margin: EdgeInsets.zero,
                  padding:
                  EdgeInsets.symmetric(
                      vertical: _height * 0.015
                  ),
                  fontFamily: poppinsMedium,
                  fontSize: _height * 0.0175,
                  textColor: Colors.white,
                  borderRadius: _width * 0.025,
                  color: homeBoxColor,
                  onTap: () {
                    _getStorage.write(
                        languageLocalePUtil, languageList[currentLanguage]!);
                    Get.updateLocale(Locale(languageList[currentLanguage]!));
                    Get.back();
                    // sendAskAmountRequest();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}

