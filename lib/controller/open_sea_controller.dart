import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/open_sea_model.dart';

class OpenseaController extends GetxController {
  var isLoading = false.obs;
  OpenseaModel? openseaModel;

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    try {
      isLoading(true);
      http.Response response = await http.get(Uri.tryParse(
          'https://moyenxpress.com/api/appV1/home_page?limit=4 &category_key= daily_deals')!);
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
      isLoading(false);
    }
  }
}