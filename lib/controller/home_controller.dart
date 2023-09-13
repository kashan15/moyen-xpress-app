import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/network/home_api.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/view/home/home_screen.dart';


import '../components/test_class.dart';
import '../models/data_model.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  double blockHeight = 1;
  double blockWidth = 1;
  double height = 1;
  double width = 1;

  RxInt notificationCount = 9.obs;

  bool homeTap = false;

  RxBool isLoading = false.obs;

  late Rx<String> tabTitleText = ''.obs;

  late BuildContext globalContext;

  late TabController tabController;

  DataModel dataModel = DataModel();
  RxList<Data> productsDataList = <Data>[].obs;
  //RxList<DataModel> productsDataList = <DataModel>[].obs;

  List<HomeScreen> itemsList = [
    HomeScreen(
      image1: ImageUtils.bag,
      name: 'Women Shoulder Handbag',
    ),
    HomeScreen(
      image1: ImageUtils.bag,
      name: 'Women Shoulder Handbag',
    ),
    HomeScreen(
      image1: ImageUtils.bag,
      name: 'Women Shoulder Handbag',
    ),
    HomeScreen(
      image1: ImageUtils.bag,
      name: 'Women Shoulder Handbag',
    ),
  ];

  List<HomeScreen> dailyDealsList = [
    HomeScreen(
      image1: ImageUtils.dealItem,
      name: 'Microwave Oven',
    ),
    HomeScreen(
      image1: ImageUtils.dealItem,
      name: 'Microwave Oven',
    ),
    HomeScreen(
      image1: ImageUtils.dealItem,
      name: 'Microwave Oven',
    ),
    HomeScreen(
      image1: ImageUtils.dealItem,
      name: 'Microwave Oven',
    ),
  ];

  List<HomeScreen> newArrivalsList = [
    HomeScreen(
      image1: ImageUtils.newArrival,
      name: 'T-Shirts',
    ),
    HomeScreen(
      image1: ImageUtils.newArrival,
      name: 'T-Shirts',
    ),
    HomeScreen(
      image1: ImageUtils.newArrival,
      name: 'T-Shirts',
    ),
    HomeScreen(
      image1: ImageUtils.newArrival,
      name: 'T-Shirts',
    ),
  ];

  List<HomeScreen> promotionsList = [
    HomeScreen(
      image1: ImageUtils.promotionPic,
      name: 'Promotions',
    ),
    HomeScreen(
      image1: ImageUtils.promotionPic,
      name: 'Promotions',
    ),
    HomeScreen(
      image1: ImageUtils.promotionPic,
      name: 'Promotions',
    ),
    HomeScreen(
      image1: ImageUtils.promotionPic,
      name: 'Promotions',
    ),
  ];

  List<HomeScreen> topSellersList = [
    HomeScreen(
      image1: ImageUtils.topSeller,
      name: 'Pascal Shop',
    ),
    HomeScreen(
      image1: ImageUtils.topSeller,
      name: 'Pascal Shop',
    ),
    HomeScreen(
      image1: ImageUtils.topSeller,
      name: 'Pascal Shop',
    ),
    HomeScreen(
      image1: ImageUtils.topSeller,
      name: 'Pascal Shop',
    ),
  ];

  List<HomeScreen> topBrandsList = [
    HomeScreen(
      image1: ImageUtils.topBrands,
      name: 'Nike',
    ),
    HomeScreen(
      image1: ImageUtils.topBrands,
      name: 'Nike',
    ),
    HomeScreen(
      image1: ImageUtils.topBrands,
      name: 'Nike',
    ),
    HomeScreen(
      image1: ImageUtils.topBrands,
      name: 'Nike',
    ),
  ];


  final List<Widget> myTabs = [
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
    HomeScreen(image1: ''),
  ];

  List<String> tabTitle = [
    'Qwe',
    'Qwe',
    'Qwe',
    'Qwe',
    'Qwe',
  ];

  final pageController = PageController();
  RxInt currentPage = 0.obs;

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

   getProductDetails();

    tabController.addListener(() {
      _handleTabSelection();
    }
    );
    // pageController.addListener(() {
    //   currentPage.value = pageController.page!.round();
    // });
  }

  // @override
  // void onClose() {
  //   pageController.dispose();
  //   super.onClose();
  // }

  void _handleTabSelection() {
    tabTitleText.value = tabTitle[tabController.index];
  }

  final controller1 =
  PageController(initialPage: 0, viewportFraction: 1.1, keepPage: false);
  final verticalControllerElectronics =
  PageController( viewportFraction: 0.8, keepPage: true);

  final scrollController = PageController();

  getProductDetails() async{
    isLoading.value = true;
    await HomeProductsApi.getHomeProductsResponse(4,'flash_deals').then((value) {
      if(value.result == true){
        dataModel = value;

        // productsDataList.value = dataModel.data!;
        productsDataList.value = [];


        // if profile is not true show snackBar with message
        if (value.result == false) {
          Get.snackbar("Alert!", "Something Went Wrong",
              snackPosition: SnackPosition.BOTTOM);
          isLoading.value = false;
        }
        //no profile response
        else {
          Get.snackbar("Alert!", "Something Went Wrong",
              snackPosition: SnackPosition.BOTTOM);
          isLoading.value = false;
        }

      }
    });
  }


}