import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';

import '../components/new_custom_dialogue.dart';
import '../view/home/home_screen.dart';
import 'dashboard_controller.dart';

class DashboardTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  final dashboardController = Get.put(DashboardController());
  // final currencyConversionController = Get.put(CurrencyConversionController());

  double height = 1;
  double width = 1;
  double blockHeight = 1;
  double blockWidth = 1;

  @override
  void onInit() {
    super.onInit();
    height = Get.height;
    width = Get.width;
    blockHeight = height / 100;
    blockWidth = width / 100;
    tabTitleText.value = tabTitle[1];
    tabController = TabController(vsync: this, length: myTabs.length);
    tabController.index = 1;
    tabController.addListener(() {
      _handleTabSelection();
    });
  }

  void openDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  late Rx<String> tabTitleText = ''.obs;

  final List<Widget> myTabs = [
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),

  ];

  List<String> tabTitle = [
    "home",
    "home",
    "home",
    "home",
    "home",
  ];

  late TabController tabController;


  bool doBack = false;

  Future<bool> onDashboardBack() async {
    return Get.dialog(CustomOverlayX(
      icon: Icons.logout,
      primaryLabel: "yes",
      secondaryLabel: "no",
      primaryTap: () => onDialogButton(true),
      title: "exit",
      label: "sure",
    )
    ).then((value) => doBack);
  }

  onDialogButton(bool value) {
    doBack = value;
    Get.back();
  }

  gotoPageIndex(int index){
    tabController.index = index;
    if (kDebugMode) {
      print(tabController.index.toString());
    }
  }

  onNotificationTap(){
    Get.toNamed(kHomeScreen);
    if (kDebugMode) {
      print(tabController.index.toString());
    }
  }

  void _handleTabSelection() {
    tabTitleText.value = tabTitle[tabController.index];
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
