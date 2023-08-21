import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'color_utils.dart';
import 'font_utils.dart';

class CustomTheme {
  static final heading = TextStyle(
    fontSize: Get.height * 0.025,
    fontFamily: poppinsSemiBold,
    color: Colors.black,
  );
  static final headingWhiteBold = TextStyle(
    fontSize: Get.height * 0.025,
    fontFamily: poppinsSemiBold,
    color: Colors.white,
  );
  static final headingWhite = TextStyle(
    fontSize: Get.height * 0.02,
    fontFamily: poppinsLight,
    color: Colors.white,
  );
  static final largeheading = TextStyle(
    fontSize: Get.height * 0.04,
    fontFamily: poppinsBold,
    color: Colors.white,
  );

  static final normalText = TextStyle(
    fontSize: Get.height * 0.01,
    fontFamily: poppinsSemiBold,
    color: Colors.white,
  );
  static final normalTextBlack = TextStyle(
    fontSize: Get.height * 0.015,
    fontFamily: poppinsSemiBold,
    color: Colors.black,
  );
  static final normalTextLightBlack = TextStyle(
    fontSize: Get.height * 0.015,
    fontFamily: poppinsRegular,
    color: Colors.black,
  );
  static final smallText = TextStyle(
    fontSize: Get.height * 0.01,
    fontFamily: poppinsRegular,
    color: Colors.black,
  );

  static final normalTextLogin = TextStyle(
    fontSize: Get.height * 0.02,
    fontFamily: poppinsRegular,
    color: Colors.white,
  );

  static final shortHeading = TextStyle(
    fontSize: Get.height * 0.02,
    fontFamily: poppinsSemiBold,
    color: Colors.black,
  );
  static final shortHeadingMedium = TextStyle(
    fontSize: Get.height * 0.015,
    fontFamily: poppinsMedium,
    color: Colors.black,
  );

  static final shortHeadingWhite = TextStyle(
    fontSize: Get.height * 0.02,
    fontFamily: poppinsLight,
    color: Colors.white,
  );
  static final balanceText = TextStyle(
    fontSize: Get.height * 0.0175,
    fontFamily: poppinsSemiBold,
    color: homeBoxColor,
  );
  static final rechargeText = TextStyle(
    fontSize: Get.height * 0.0175,
    fontFamily: poppinsSemiBold,
    color: Colors.white,
  );
  static final balanceAmount = TextStyle(
    fontSize: Get.height * 0.045,
    fontFamily: poppinsBold,
    color: Colors.white,
  );
  static final italicHeading = TextStyle(
    fontSize: Get.height * 0.025,
    fontFamily: poppinsSemiBoldItalic,
    color: homeBoxColor,
  );
  static final shippingText1 = TextStyle(
    fontSize: Get.height * 0.0125,
    fontFamily: poppinsSemiBold,
    color: Colors.grey,
  );
  static final shippingText2 = TextStyle(
    fontSize: Get.height * 0.0125,
    fontFamily: poppinsMedium,
    color: Colors.black,
  );
  static final shippingText3 = TextStyle(
    fontSize: Get.height * 0.0125,
    fontFamily: poppinsMedium,
    color: deliveredColor,
  );
  static final shippingText4 = TextStyle(
    fontSize: Get.height * 0.0125,
    fontFamily: poppinsMedium,
    color: Colors.red,
  );
  static final productName = TextStyle(
    fontSize: Get.height * 0.0125,
    fontFamily: poppinsMedium,
    color: Colors.black,
  );
  static final topProductsName = TextStyle(
    fontSize: Get.height * 0.015,
    fontFamily: poppinsMedium,
    color: Colors.black,
  );
  static final productPrice = TextStyle(
    fontSize: Get.height * 0.0125,
    fontFamily: poppinsMedium,
    color: homeBoxColor,
  );
}
