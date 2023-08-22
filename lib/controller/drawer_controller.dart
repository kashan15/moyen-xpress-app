import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/view/categories/categories_screen.dart';
import 'package:moyen_xpress_app/view/home/home_screen.dart';

import '../components/test_class.dart';
import '../utils/image_utils.dart';
import '../view/categories/categories_details.dart';

class DrawerScreenController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List drawerItemList = [
    {
      "icon": ImageUtils.homeIconDrawer,
      "name": "Home"
    },
    {
      "icon": ImageUtils.storeIcon,
      "name": "Stores"
    },{
      "icon": ImageUtils.aboutIcon,
      "name": "About"
    },{
      "icon": ImageUtils.phoneIcon,
      "name": "Contact"
    },{
      "icon": ImageUtils.shippingIcon,
      "name": "Shipping"
    },{
      "icon": ImageUtils.technicianIcon,
      "name": "Technician"
    },
    {
      "icon": ImageUtils.auctionIcon,
      "name": "Auction"
    },

  ];

}