import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/view/home/home_screen.dart';
import 'package:moyen_xpress_app/view/home/show_more.dart';

import '../models/open_sea_model.dart';
import '../utils/image_utils.dart';
import 'package:http/http.dart' as http;


class ShowMoreController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchAllDataDailyDeals();

  }

  List<ShowMoreScreen> itemsList = [
    ShowMoreScreen(
      image1: ImageUtils.bag,
      name: 'Women Shoulder Handbag',
    ),
    ShowMoreScreen(
      image1: ImageUtils.dealItem,
      name: 'Microwave Oven',
    ),
    ShowMoreScreen(
      image1: ImageUtils.bag,
      name: 'Women Shoulder Handbag',
    ),
    ShowMoreScreen(
      image1: ImageUtils.dealItem,
      name: 'Microwave Oven',
    ),
  ];

  var isLoading1 = false.obs;
  OpenseaModel? openseaModel;

  fetchAllDataDailyDeals() async {
    try {
      isLoading1(true);
      http.Response response = await http.get(Uri.tryParse(
        // 'https://moyenxpress.com/api/appV1/home_page?limit=4 &category_key= daily_deals')!);
          'https://moyenxpress.com/api/appV1/home_page?category_key= daily_deals')!);
      if (response.statusCode == 200) {
        ///data successfully
        var result = jsonDecode(response.body);

        openseaModel = OpenseaModel.fromJson(result);
      } else {
        print('error fetching data');
      }
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isLoading1(false);

    }
  }

}