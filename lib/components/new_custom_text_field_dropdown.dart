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
          color: textFieldColor,
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