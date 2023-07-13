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
  static final italicHeading = TextStyle(
    fontSize: Get.height * 0.025,
    fontFamily: poppinsSemiBoldItalic,
    color: homeBoxColor,
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
