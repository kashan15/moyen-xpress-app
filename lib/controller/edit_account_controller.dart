import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

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

