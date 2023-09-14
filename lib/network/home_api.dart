
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moyen_xpress_app/utils/network_utils.dart';
import 'package:moyen_xpress_app/utils/storage_utils.dart';
import 'package:http/http.dart' as http;
import '../models/data_model.dart';

class HomeProductsApi{
  static Future<DataModel> getHomeProductsResponse(int limit, String categoryKey) async{

    var url = '$baseUrl$apiVersion$homePageEndPoint?limit=$limit&category_key=$categoryKey';

    DataModel dataModel = DataModel();

    final getStorage = GetStorage();
    final token = getStorage.read(authToken);
    if (kDebugMode) print("url $url");
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };

    try {
      // isDataLoading(true);
      http.Response response = await http.get(Uri.parse(url), headers: headers);

      if (response.statusCode == 200) {
        ///data successfully
        // var result = jsonDecode(response.body);
        // dataModel = DataModel.fromJson(result);
        // print(result);

        final Map<String, dynamic> responseJson = json.decode(response.body);
        final DataModel dataModel = DataModel.fromJson(responseJson);
        print(dataModel);
        print('PRODUCTS DATA: ${responseJson}');



        // if (kDebugMode) {
        //   print("assignedOrdersModel ${dataModel.toJson().toString()}");
        //   log('assignedOrdersApi: success');
        // }
      } else {}
    } catch (e,stacktrace) {
      if (kDebugMode) {
        log('assignedOrdersApi: Error while getting data is $e \n $stacktrace');
      }
    } finally {
      // isDataLoading(false);
      return dataModel;
    }

  }
}