import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/models/show_more_products_model.dart';
import 'package:moyen_xpress_app/models/show_more_sellers_model.dart';
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
    fetchAllDataTopSellers();

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
  ShowMoreProductsModel? showMoreProductsModel;
  ShowMoreSellersModel? showMoreSellersModel;

  fetchAllDataDailyDeals() async {
    try {
      isLoading1(true);
      http.Response response = await http.get(Uri.tryParse(
        // 'https://moyenxpress.com/api/appV1/home_page?limit=4 &category_key= daily_deals')!);
          'https://moyenxpress.com/api/appV1/home_page')!);
      if (response.statusCode == 200) {
        ///data successfully
        var result = jsonDecode(response.body);

        // openseaModel = OpenseaModel.fromJson(result);
        showMoreProductsModel = ShowMoreProductsModel.fromJson(result);
      } else {
        print('error fetching data');
      }
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isLoading1(false);

    }
  }

  fetchAllDataTopSellers() async {
    try {
      isLoading1(true);
      http.Response response = await http.get(Uri.tryParse(
        // 'https://moyenxpress.com/api/appV1/home_page?limit=4 &category_key= daily_deals')!);
          'https://moyenxpress.com/api/appV1/home_page')!);
      if (response.statusCode == 200) {
        ///data successfully
        var result = jsonDecode(response.body);

        showMoreSellersModel = ShowMoreSellersModel.fromJson(result);
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