import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = false.obs;

  void toggleDarkMode() {
    isDarkMode.toggle();
    updateTheme();
  }

  void updateTheme() {
    Get.changeTheme(isDarkMode.value ? ThemeData.dark() : ThemeData.light());
  }



  ///

  // RxBool isLightTheme = false.obs;
  //
  // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  //
  // saveThemeStatus() async {
  //   SharedPreferences pref = await _prefs;
  //   pref.setBool('theme', isLightTheme.value);
  // }
  //
  // getThemeStatus() async {
  //   var isLight = _prefs.then((SharedPreferences prefs) {
  //     return prefs.getBool('theme') != null ? prefs.getBool('theme') : true;
  //   }).obs;
  //   isLightTheme.value = await isLight.value ?? false;
  //   Get.changeThemeMode(isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
  // }
  //
  // // _getThemeStatus() async {
  // //   var _isLight = _prefs.then((SharedPreferences prefs) {
  // //     return prefs.getBool('theme') != null ? prefs.getBool('theme') : true;
  // //   }).obs;
  // //   _isLightTheme.value = await _isLight.value;
  // //   Get.changeThemeMode(_isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
  // // }

}




