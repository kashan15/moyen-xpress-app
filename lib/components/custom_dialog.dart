import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';

class CustomDialogSimple extends StatelessWidget {
  final String title;
  final String description;
  bool okTap = false;
    CustomDialogSimple({super.key,
   required this.title,
   required this.description,
     required this.okTap
});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: Get.height * 0.275,
        width: Get.width,
        child: Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(_width * 0.025))),
          child: Column(
            children: [
              SizedBox(height: _height * 0.025,),
              okTap == true ?
              Image.asset(
                ImageUtils.checkIcon,
                height: Get.height * 0.09,
              ) :
              Image.asset(
                ImageUtils.progressIcon,
                height: Get.height * 0.09,
              ),
              SizedBox(height: _height * 0.015,),
              TextWidget(
                textTitle: title,
                fontSize: Get.height * 0.02,
                color: Colors.black,
                fontFamily: poppinsSemiBold,
              ),
              SizedBox(height: _height * 0.005,),
              TextWidget(
                textTitle: description,
                fontSize: Get.height * 0.0125,
                color: Colors.black,
                fontFamily: poppinsRegular,
              )
            ],
          ),
        ),
      ),
    );
  }
}
