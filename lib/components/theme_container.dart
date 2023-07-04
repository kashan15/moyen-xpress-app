import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';

import '../controller/settings_screen_controller.dart';
import '../controller/theme_controller.dart';

class ThemeContainer extends StatelessWidget {
  String? title1;
  String? title2;
  // EdgeInsetsGeometry? margin;
  // EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? textColor1;
  final Color? textColor2;
  final double? borderRadius;
  final double? fontSize;
  final double? height;
  final double? width;
  String? fontFamily;
  // List<BoxShadow>? boxShadow;
  void Function()? onTap;
  Widget? child;
  ThemeContainer({
    this.title1,
    this.title2,
    this.onTap,
    // this.margin,
    // this.padding,
    this.color,
    this.borderRadius,
    this.textColor1,
    this.textColor2,
    this.fontSize,
    this.fontFamily,
    this.height,
    this.width,
    // this.boxShadow,
    this.child
  });

  @override
  bool isChecked = false;
  final ThemeController themeController = Get.put(ThemeController());



  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: _width * 0.04
      ),
      padding: EdgeInsets.symmetric(
        vertical: _height * 0.01,
        horizontal: _width * 0.04,
      ),
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius!),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(0, 0))
          ]
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          //   Obx(
          // ()=> TextWidget(
          //       textTitle: themeController.isLightTheme.value ? title1 : title2,
          //       color: themeController.isLightTheme.value ? homeBoxColor : Colors.black,
          //       fontFamily: fontFamily,
          //       fontSize: fontSize,
          //     ),
          //   ),

            Obx(
                  ()=> TextWidget(
                textTitle: themeController.isDarkMode.value ? title1 : title2,
                color: themeController.isDarkMode.value ? homeBoxColor : Colors.black,
                fontFamily: fontFamily,
                fontSize: fontSize,
              ),
            ),

            Obx(
            ()=> Switch.adaptive(
                activeColor: homeBoxColor,
                inactiveThumbColor: Colors.black,
                value: themeController.isDarkMode.value,
                onChanged: (value) {
                  themeController.toggleDarkMode();
                },
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),

            ),



            // ObxValue(
            //       (data) => Switch(
            //     value: themeController.isLightTheme.value,
            //     onChanged: (val) {
            //       themeController.isLightTheme.value = val;
            //       Get.changeThemeMode(
            //         themeController.isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
            //       );
            //       themeController.saveThemeStatus();
            //     },
            //   ),
            //   false.obs,
            // ),

          ],

      ),
    );
  }
}
