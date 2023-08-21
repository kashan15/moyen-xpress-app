import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TechnicianSearchController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;


  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();

}