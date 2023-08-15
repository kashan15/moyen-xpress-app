import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moyen_xpress_app/view/home/home_screen.dart';

import '../components/test_class.dart';

class ProductDetailsController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController searchController = TextEditingController();

  TabController? tabController;
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  bool tap4 = false;

  RxInt selectIcon = 0.obs;
  //var selectIcon2 = Rx(-1);

  changeColor(int index){
    selectIcon.value = index;
    //selectIcon2.value = index;
  }
}