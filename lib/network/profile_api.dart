import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../models/profile_model.dart';
import '../utils/network_utils.dart';
import '../utils/storage_utils.dart';

class ProfileApi {
  static Future<ProfileModel> getProfileResponse() async {
    const url = '$baseUrl$apiVersion$userProfileEndPoint';
    ProfileModel profileModel = ProfileModel();
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

        profileModel = ProfileModel.fromJson(result);

        if (kDebugMode) {
          print("profileModel ${profileModel.toJson().toString()}");
        }
        if (kDebugMode) {
          log('ProfileApi: success');
        }
      } else {}
    } catch (e) {
      if (kDebugMode) {
        log('ProfileApi: Error while getting data is $e');
      }
    } finally {
      // isDataLoading(false);
      return profileModel;
    }
  }

  static updateProfileDataModel(ProfileDataModel model) async {
    const url = '$baseUrl$apiVersion$updateProfileEndPoint';
    // try {
    final getStorage = GetStorage();
    final token = getStorage.read(authToken);

    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    var request = http.MultipartRequest('POST', Uri.parse(url));

    request.headers.addAll(headers);

    request.fields["name"] = model.name ?? "";
    request.fields["phone"] = model.phone ?? "";
    request.fields["address"] = model.address ?? "";
    request.fields["image"] = model.image ?? "";



    http.StreamedResponse response = await request.send();
    if (kDebugMode) {
      print('Uploading Image ${response.statusCode}');
      // print('Uploading Image ${request.files.toList().toString() ?? ''}');
      request.files.toList().forEach((element) {
        if (kDebugMode) {
          print("file name ${element.field}");
          print("file value ${element.filename}");
        }
      });

    }

    if (response.statusCode == 200 || response.statusCode == 201) {
      await response.stream.bytesToString().then((value) {
        var result = jsonDecode(value.toString());
        if (kDebugMode) {
          print("result :: $result");
        }
        if (result != null) {
          // registrationModel = RegistrationModel.fromJson(result);
          // returnVal = registrationModel;
          if (kDebugMode) {
            print(result.toString());
          }
        } else {
          // returnVal = registrationModel;
          // print('Error0 Caught');
          // print(result.toString());
        }
      });
    } else {
      if (kDebugMode) {
        print('Error1 Caught');
        print('Error Something went wrong');
        await response.stream.bytesToString().then((value) {
          // var result = jsonDecode(value.toString());
          var result = value.toString();
          if (kDebugMode) {
            print("result :: $result");
          }
        });
      }
    }
    // } catch (e, stack) {
    //   if (kDebugMode) {
    //     print('Error Caught e ::: $e \n ::::::: \n$stack');
    //     print('Error Something went wrong');
    //   }
    // }
  }
}

