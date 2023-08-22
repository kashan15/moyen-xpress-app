import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moyen_xpress_app/components/test_class.dart';

import '../utils/color_utils.dart';

class Dropdown extends StatelessWidget {
  final Widget dropdown;

  const Dropdown({Key? key, required this.dropdown}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: sizeW(15)),
        decoration: BoxDecoration(
          // color: textFieldColor,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(sizeW(40)),
          boxShadow: [
            BoxShadow(
                color: customGreyColor.withOpacity(0.3),
                blurRadius: 3,
                offset: const Offset(0, 3))
          ],
        ),
        height: sizeH(50),
        width: Get.width,
        child: DropdownButtonHideUnderline(
          child: dropdown,
        ));
  }
}

class Dropdown1 extends StatelessWidget {
  final Widget dropdown;

  const Dropdown1({Key? key, required this.dropdown}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeH(50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0), // Set your desired border radius
        border: Border.all(
          color: Colors.grey.withOpacity(0.1), // Set your desired border color
        ),
      ),
      child: dropdown
    );
  }
}