import 'package:flutter/material.dart';

import '../utils/color_utils.dart';
import '../utils/image_utils.dart';

Widget circleAvatar({
  // required var asset,
  var asset,
  required double size,
  Widget? imageWidget,
  bool shadow = true,
  Alignment? alignment,
  Color? bgColor,
  Color? iconColor,
  Color? borderColor,
  bool border = false,
  BoxFit? boxFit,
}) {
  return Align(
    alignment: alignment ?? Alignment.center,
    child: Container(
        width: size,
        //sizeH(width),
        height: size,
        //sizeH(height),
        decoration: BoxDecoration(
            color: bgColor ?? Colors.black, //fieldColor,
            shape: BoxShape.circle,
            border: border
                ? Border.all(
                color: borderColor ?? primaryColorSwatch,
                width: 2,
                strokeAlign: BorderSide.strokeAlignOutside)
                : null,
            boxShadow: shadow
                ? [
              const BoxShadow(
                color: textGreyColor,
                offset: Offset(
                  0.0,
                  3.0,
                ),
                blurRadius: 5.0,
                spreadRadius: 1.0,
              ),
            ]
                : null),
        clipBehavior: Clip.hardEdge,
        child: imageWidget ??
            genericAsset(asset: asset, iconColor: iconColor, boxFit:boxFit)

    ),
  );
}
