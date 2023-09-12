import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';

import '../models/profile_model.dart';
import '../network/profile_api.dart';
import '../utils/lang_string_util.dart';

class EditAccountController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  ProfileModel profileModel = ProfileModel();
  Rx<ProfileDataModel> profileDataModel = ProfileDataModel().obs;
  RxBool isProfileLoading = false.obs;


  TabController? tabController;
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  bool tap4 = false;

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


}

