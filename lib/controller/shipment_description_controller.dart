import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';

import '../view/orders/my_order_details.dart';

class ShipmentDescriptionController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController productNameController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController lengthController = TextEditingController();
  TextEditingController widthController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController businessEmailController = TextEditingController();
  TextEditingController businessPhoneController = TextEditingController();
  TextEditingController describeBoxController = TextEditingController();
  TextEditingController parcelValueController = TextEditingController();
  TextEditingController pickupDateController = TextEditingController();


  var isTapped = false.obs;

  void toggleText() {
    if (!isTapped.value) {
      isTapped.value = true;
    } else {
      Get.toNamed(kAboutScreen); // Navigate to the OtherPage
    }
  }



}