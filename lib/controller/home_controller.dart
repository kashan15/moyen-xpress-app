import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  late BuildContext globalContext;

  final controller1 =
  PageController(initialPage: 0, viewportFraction: 1.1, keepPage: false);
  final verticalControllerElectronics =
  PageController( viewportFraction: 0.8, keepPage: true);

}