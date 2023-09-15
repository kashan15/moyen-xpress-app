
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moyen_xpress_app/utils/network_utils.dart';
import 'package:moyen_xpress_app/utils/storage_utils.dart';
import 'package:http/http.dart' as http;
import '../models/data_model.dart';

class HomeProductsApi{

  List<DataModel> dataList = [];
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

    // try {
    //   // isDataLoading(true);
    //   http.Response response = await http.get(Uri.parse(url), headers: headers);
    //
    //   if (response.statusCode == 200) {
    //     ///data successfully
    //     // var result = jsonDecode(response.body);
    //     // dataModel = DataModel.fromJson(result);
    //     // print(result);
    //
    //     // final Map<String, dynamic> responseJson = json.decode(response.body);
    //     final responseJson = json.decode(response.body) as Map<String, dynamic>;
    //     final DataModel dataModel = DataModel.fromJson(responseJson);
    //     //final result = DataModel.fromJson(responseJson);
    //     return dataModel;
    //   }
    //   else{
    //     throw Exception('Failed to load data');
    //   }
    //
    // } catch (e,stacktrace) {
    //   if (kDebugMode) {
    //     log('assignedOrdersApi: Error while getting data is $e \n $stacktrace');
    //   }
    // }
    // finally {
    //   // isDataLoading(false);
    //   // ignore: control_flow_in_finally
    //   return dataModel;
    // }

     try{
       http.Response response = await http.get(Uri.parse(url), headers: headers);

       if (response.statusCode == 200) {
         ///data successfully
         // var result = jsonDecode(response.body);
         // dataModel = DataModel.fromJson(result);
         // print(result);

         // final Map<String, dynamic> responseJson = json.decode(response.body);
         final responseJson = json.decode(response.body) as Map<String, dynamic>;
         final DataModel dataModel = DataModel.fromJson(responseJson);
         //final result = DataModel.fromJson(responseJson);
         return dataModel;
       }
       else{
         throw Exception('Failed to load data');
       }
     }
     catch(e){
       print(e);
     }
     return dataModel;
  }
}


// class GetMyEvents{
//
//   List<DataModel> dataList = [];
//
//   Future getMyEventsDetails(DataModel dataModel, int limit, String categoryKey) async{
//
//     var url = '$baseUrl$apiVersion$homePageEndPoint?limit=$limit&category_key=$categoryKey';
//
//     //DataModel dataModel = DataModel();
//
//     final getStorage = GetStorage();
//     final token = getStorage.read(authToken);
//     if (kDebugMode) print("url $url");
//     var headers = {
//       'Content-Type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': 'Bearer $token',
//     };
//
//     try{
//       http.Response response = await http.get(Uri.parse(url), headers: headers);
//       if(response.statusCode == 200){
//
//         final responseJson = json.decode(response.body);
//         dataList = [];
//         dataList.add(DataModel.fromJson(responseJson));
//         return dataList;
//       }
//
//
//     } catch(e){
//       print(e);
//     }
//   }
//
// }