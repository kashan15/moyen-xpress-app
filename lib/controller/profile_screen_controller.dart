import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../models/profile_model.dart';
import '../network/profile_api.dart';
import '../utils/lang_string_util.dart';
import '../utils/route_utils.dart';

class ProfileController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  /// Profile Screen Controller
  TextEditingController searchController = TextEditingController();

  /// Edit Account Screen Controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();


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

  updateProfile() async{
    isProfileLoading.value = true;

    ProfileDataModel model = ProfileDataModel(
      name: profileDataModel.value.name,
      email: profileDataModel.value.email,
      phone: phoneController.text.isEmpty ?
          "Empty" :
          phoneController.text,
      address: addressController.text.isEmpty ?
          "Empty" :
          addressController.text
    );

    if (kDebugMode) {
      print("Profile data modellll   ${model.toJson().toString()}");
    }

    await ProfileApi.updateProfileDataModel(model);
    isProfileLoading.value = false;
  }

  /// Edit Account Screen Functions
  final ImagePicker _picker = ImagePicker();
  RxString imagePath = ''.obs;
  RxString imagePath1 = ''.obs;

  Future<void> pickImageFromCamera() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      imagePath.value = pickedImage.path;
    }
  }

  Future<void> pickImageFromGallery() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      imagePath1.value = pickedImage.path;
    }
  }
  ///


}

