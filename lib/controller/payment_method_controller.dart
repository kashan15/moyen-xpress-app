import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/image_utils.dart';

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

  void toggleSelection(int index) {
    checkList[index].isSelected = !checkList[index].isSelected;

  }


}

