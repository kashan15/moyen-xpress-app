import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';

import '../view/orders/my_order_details.dart';

class ShippingFromController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController businessEmailController = TextEditingController();
  TextEditingController businessPhoneController = TextEditingController();
  TextEditingController address1Controller = TextEditingController();
  TextEditingController address2Controller = TextEditingController();

  TextEditingController nameControllerTo = TextEditingController();
  TextEditingController emailControllerTo = TextEditingController();
  TextEditingController phoneControllerTo = TextEditingController();
  TextEditingController countryControllerTo = TextEditingController();
  TextEditingController stateControllerTo = TextEditingController();
  TextEditingController cityControllerTo = TextEditingController();
  TextEditingController postalCodeControllerTo = TextEditingController();
  TextEditingController businessEmailControllerTo = TextEditingController();
  TextEditingController businessPhoneControllerTo = TextEditingController();
  TextEditingController address1ControllerTo = TextEditingController();
  TextEditingController address2ControllerTo = TextEditingController();



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

  var isTapped = false.obs;

  void toggleText() {
    if (!isTapped.value) {
      isTapped.value = true;
    } else {
      Get.toNamed(kAboutScreen); // Navigate to the OtherPage
    }
  }



}