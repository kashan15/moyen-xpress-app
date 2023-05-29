import 'dart:async';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../utils/route_utils.dart';

class DashboardController extends GetxController {
  double height = Get.height;
  double width = Get.width;
  late double blockHeight = height / 100;
  late double blockWidth = width / 100;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> sendOfferFormKey = GlobalKey<FormState>();

  TextEditingController amountController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  final _getStorage = GetStorage();

  RxBool isOrderPoolLoading = false.obs;
  RxBool isRecentOrderLoading = false.obs;

  RxBool offerSending = false.obs;


  var xyz = ''.obs;

  RxInt isRecentOrderExpand = 999.obs;
  onRecentOrderExpand(index) {
    isRecentOrderExpand.value = index;
    update();
  }

  void openDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  RxInt completedOrderCount = 0.obs;
  RxInt acceptedOrderCount = 0.obs;

  RxInt verificationStatus = 1.obs; //1 == true: 0== false
  RxInt accountStatus = 1.obs; //1 == true: 0== false

  RxInt notificationCount = 9.obs;

  @override
  void onInit() {
    super.onInit();

  }

}
