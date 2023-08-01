import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/view/categories/categories_screen.dart';
import 'package:moyen_xpress_app/view/home/home_screen.dart';

import '../components/test_class.dart';
import '../utils/image_utils.dart';
import '../view/categories/categories_details.dart';

class CategoriesDetailsController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  double blockHeight = 1;
  double blockWidth = 1;
  double height = 1;
  double width = 1;

  bool categoryTap = false;

  RxInt notificationCount = 9.obs;

  late Rx<String> tabTitleText = ''.obs;

  late BuildContext globalContext;

  late TabController tabController;

  final List<Widget> myTabs = [
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
  ];

  List<CategoryDetailsScreen> allProducts = [
    CategoryDetailsScreen(
      image: ImageUtils.products1,
      name: "Bicycle",
    ),
    CategoryDetailsScreen(
      image: ImageUtils.products2,
      name: "Sneakers",
    ),
    CategoryDetailsScreen(
      image: ImageUtils.products3,
      name: "Swim Goggle",
    ),
    CategoryDetailsScreen(
      image: ImageUtils.products4,
      name: "Fishing Net",
    ),
    CategoryDetailsScreen(
      image: ImageUtils.products1,
      name: "Bicycle",
    ),
    CategoryDetailsScreen(
      image: ImageUtils.products2,
      name: "Sneakers",
    ),
    CategoryDetailsScreen(
      image: ImageUtils.products3,
      name: "Swim Goggle",
    ),
    CategoryDetailsScreen(
      image: ImageUtils.products4,
      name: "Fishing Net",
    ),
    CategoryDetailsScreen(
      image: ImageUtils.products1,
      name: "Bicycle",
    ),
    CategoryDetailsScreen(
      image: ImageUtils.products2,
      name: "Sneakers",
    ),
    CategoryDetailsScreen(
      image: ImageUtils.products3,
      name: "Swim Goggle",
    ),
    CategoryDetailsScreen(
      image: ImageUtils.products4,
      name: "Fishing Net",
    ),
  ];

  List<String> tabTitle = [
    'Qwe',
    'Qwe',
    'Qwe',
    'Qwe',
    'Qwe',
  ];

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

  void _handleTabSelection() {
    tabTitleText.value = tabTitle[tabController.index];
  }

  final controller1 =
  PageController(initialPage: 0, viewportFraction: 1.1, keepPage: false);
  final verticalControllerElectronics =
  PageController( viewportFraction: 0.8, keepPage: true);

}