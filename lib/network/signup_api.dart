import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:moyen_xpress_app/models/signup_model.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../utils/network_utils.dart';
import '../utils/storage_utils.dart';

class SignupAPI{
  static Future<SignupModel> getSignupResponse({
    required String name,
    required String email,
    required String password
  }) async {
    dynamic returnVal;

    if(kDebugMode){
      print('API hit');
      print("name: $name  email: $email  password: $password");
    }

    const url = '$baseUrl$apiVersion$signupEndPoint';
    SignupModel signupModel = SignupModel();

    final getStorage = GetStorage();
    final token = getStorage.read(authToken);

    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };

    try{
      try{
        var request = http.MultipartRequest('POST', Uri.parse(url));

        request.headers.addAll(headers);

        request.fields["name"] = name;
        request.fields["email"] = email;
        request.fields["password"] = password;

        http.StreamedResponse response = await request.send();

        /// RESPONSE
        if(response.statusCode == 200 || response.statusCode == 201){
          await response.stream.bytesToString().then((value) {
            var result = jsonDecode(value.toString());
            if(result != null){
              signupModel = SignupModel.fromJson(result);
              returnVal = signupModel;

              if(kDebugMode){
                print(result.toString());
              }
              else{
                returnVal = signupModel;
                if(kDebugMode){
                  print('Error0 Caught');
                  print(result.toString());
                }
              }
            }
          });
        } else{
          if(kDebugMode){
            print('Error1 Caught');
            print('Error Something went wrong');
          }
        }
      }
      catch (e, stack) {
        if (kDebugMode) {
          print('Error Caught: $e');
          print('Error Something went wrong xxx $stack');
        }
      }
    }
    on SocketException catch (e) {
      if (kDebugMode) {
        print(
            'No Internet Please check your internet connection and try again.$e');
      }
    }
    return returnVal;

  }
}