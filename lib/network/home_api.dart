
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moyen_xpress_app/utils/network_utils.dart';
import 'package:moyen_xpress_app/utils/storage_utils.dart';
import 'package:http/http.dart' as http;
import '../models/data_model.dart';

class HomeProductsApi{
  static Future<DataModel> getHomeProductsResponse() async{

    const url = '$baseUrl$apiVersion$homePageEndPoint';

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
        var result = jsonDecode(response.body);

        dataModel = DataModel.fromJson(result);

        if (kDebugMode) {
          print("assignedOrdersModel ${dataModel.toJson().toString()}");
          log('assignedOrdersApi: success');
        }
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