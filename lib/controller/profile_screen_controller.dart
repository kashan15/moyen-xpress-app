import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/profile_model.dart';
import '../network/profile_api.dart';
import '../utils/lang_string_util.dart';
import '../utils/route_utils.dart';

class ProfileController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController searchController = TextEditingController();

  TabController? tabController;
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  bool tap4 = false;

  ProfileModel profileModel = ProfileModel();
  Rx<ProfileDataModel> profileDataModel = ProfileDataModel().obs;
  RxBool isProfileLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getProfileResponse();

    if (kDebugMode) {
      print("onInit");
    }
  }

  getProfileResponse() {
    isProfileLoading.value = true;
    ProfileApi.getProfileResponse().then((value) {
      if (value.result == true) {
        profileModel = value;

        profileDataModel.value = profileModel.data!;
        isProfileLoading.value = false;

      }

      // if profile is not true show snackbar with message
      else if (value.result == false) {
        Get.snackbar(alertSUtil.tr, wentWrongSUtil.tr,
            snackPosition: SnackPosition.BOTTOM);
        isProfileLoading.value = false;
      }

      //no profile response
      else {
        Get.snackbar(alertSUtil.tr, wentWrongSUtil.tr,
            snackPosition: SnackPosition.BOTTOM);
        isProfileLoading.value = false;
      }
    });
  }

  getProfileResponseOne() {
    isProfileLoading.value = true;
    ProfileApi.getProfileResponse().then((value) {
      if (value.result == true) {
        profileModel = value;

        profileDataModel.value = profileModel.data!;
        isProfileLoading.value = false;
        Get.toNamed(kEditAccount);

      }

      // if profile is not true show snackbar with message
      else if (value.result == false) {
        Get.snackbar(alertSUtil.tr, wentWrongSUtil.tr,
            snackPosition: SnackPosition.BOTTOM);
        isProfileLoading.value = false;
      }

      //no profile response
      else {
        Get.snackbar(alertSUtil.tr, wentWrongSUtil.tr,
            snackPosition: SnackPosition.BOTTOM);
        isProfileLoading.value = false;
      }
    });
  }


}

