import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/login_model.dart';
import '../utils/network_utils.dart';

class LoginApi{
  static Future<LoginModel> getLoginResponse({
    required String email,
    required String password,
    // required fcmToken
  }) async {
    const url = '$baseUrl$apiVersion$loginEndPoint';
    LoginModel loginModel = LoginModel();

    var body = {
      'email': email,
      'password': password,
      //'fcm_token': fcmToken
    };

    try{

      http.Response response = await http.post(Uri.parse(url), body: body);
      var result = jsonDecode(response.body);

      if(response.statusCode == 200){
        /// data successfully

        loginModel = LoginModel.fromJson(result);
        if (kDebugMode) {
          log('LoginApi: success');
          print("LoginApi success ${body.toString()}");
        }
      }
      else if(response.statusCode == 401){

        loginModel = LoginModel.fromJson(result);
        if (kDebugMode) {
          log("LoginApi error ${body.toString()}");
        }
      } else {
        if (kDebugMode) {
          log("LoginApi error ${body.toString()}");
        }
      }
    } catch (e,stackTrace) {
      if (kDebugMode) {
        log('LoginApi: Error while getting data is $e  \n $stackTrace');
      }
    }
    return loginModel;
  }
}