import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../view/orders/my_order_details.dart';

class QuoteOrderDetailsController extends GetxController
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

  List<MyOrderDetailsScreen> itemsList = [
    MyOrderDetailsScreen(
      name: 'Recharge',
    ),
    MyOrderDetailsScreen(
      name: 'Wallet',
    ),
  ];

}

