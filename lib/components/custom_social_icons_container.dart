import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomSocialContainer extends StatelessWidget {
   String? image;
  void Function()? onTap;
   CustomSocialContainer({Key? key,
  required this.image,
     required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.005,
          horizontal: Get.width * 0.025,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Get.width * 0.01)
        ),
        child: Center(
          child: Image.asset(image!,
          height: Get.height * 0.05,
          fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
