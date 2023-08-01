import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/view/home/home_screen.dart';
import 'package:moyen_xpress_app/view/home/show_more.dart';

import '../utils/image_utils.dart';


class ShowMoreController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List<ShowMoreScreen> itemsList = [
    ShowMoreScreen(
      image1: ImageUtils.bag,
      name: 'Women Shoulder Handbag',
    ),
    ShowMoreScreen(
      image1: ImageUtils.dealItem,
      name: 'Microwave Oven',
    ),
    ShowMoreScreen(
      image1: ImageUtils.bag,
      name: 'Women Shoulder Handbag',
    ),
    ShowMoreScreen(
      image1: ImageUtils.dealItem,
      name: 'Microwave Oven',
    ),
  ];

}