import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:moyen_xpress_app/models/category_products_model.dart';


class CategoriesController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> onInit() async {
    super.onInit();
    categoryProductsData();
  }

  var isLoading1 = false.obs;
  CategoryProductsModel categoryProductsModel = CategoryProductsModel();

  categoryProductsData() async {
    try {
      isLoading1(true);
      http.Response response = await http.get(Uri.tryParse(
          'https://moyenxpress.com/api/appV1/category_products')!);
      if (response.statusCode == 200) {
        ///data successfully
        var result = jsonDecode(response.body);

        categoryProductsModel = CategoryProductsModel.fromJson(result);
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