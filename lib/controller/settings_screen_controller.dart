import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/view/home/home_screen.dart';


class SettingsController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  var switchValue = false.obs;


  void toggleSwitch(bool value) {
    switchValue.value = value;

  }

}