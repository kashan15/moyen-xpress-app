import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/view/home/home_screen.dart';


class CategoriesController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

}