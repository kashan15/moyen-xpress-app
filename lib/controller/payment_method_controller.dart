import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/image_utils.dart';
import '../view/payment/payment_method_details.dart';

class PaymentController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController amountController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();


  TabController? tabController;
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  bool tap4 = false;

  RxInt select = 0.obs;

  RxBool isSelected = false.obs;

  List checkList = [].obs;

  // List<PaymentDetailsScreen> itemsList = [
  //   PaymentDetailsScreen(
  //     image1: ImageUtils.bag,
  //     name: 'Women Shoulder Handbag',
  //   ),
  //   PaymentDetailsScreen(
  //     image1: ImageUtils.dealItem,
  //     name: 'Microwave Oven',
  //   ),
  // ];

  void toggleSelection(int index) {
    checkList[index].isSelected = !checkList[index].isSelected;

  }


}

