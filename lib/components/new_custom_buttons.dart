import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:moyen_xpress_app/components/test_class.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';


class Button extends StatelessWidget {
  final double? width;
  final double height;
  final String text;
  final double radius;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback? onPressed;
  final Color? fontColor;
  final double elevation;
  final Color shadowColor;
  final double? horizontalMargin;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Alignment? alignment;

  const Button(
      {Key? key,
        this.height = 50,
        this.width,
        this.elevation = 0,
        this.onPressed,
        this.horizontalMargin,
        this.shadowColor = Colors.transparent,
        required this.text,
        this.fontSize = 14,
        this.fontWeight = FontWeight.w500,
        this.fontColor,
        this.radius = 40,
        this.color,
        this.horizontalPadding,
        this.verticalPadding,
        this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(horizontal: sizeW(horizontalMargin ?? 0)),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: shadowColor, blurRadius: 10, offset: Offset(0, elevation))
      ], borderRadius: BorderRadius.circular(sizeW(radius))),
      child: ElevatedButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.white.withAlpha(40)),
            backgroundColor:
            MaterialStateProperty.all(color ?? homeBoxColor),
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                horizontal: horizontalPadding ?? 0,
                vertical: verticalPadding ?? 0)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(sizeW(radius)),
              ),
            )),
        onPressed: onPressed,
        child: Center(
          child: Text(
            text.tr,
            textAlign: TextAlign.center,
            //style: med14.copyWith(color: fontColor ?? Colors.white),
          ),
        ),
      ),
    );
  }
}

class MyIconButton extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? width;
  final double? height;
  final String text;
  final double radius;
  final VoidCallback onPressed;
  final Color fontColor;
  final double elevation;
  final Color shadowColor;
  final double? horizontalMargin;
  final double? horizontalPadding;
  final double? verticalPadding;
  final MainAxisAlignment mainAxisAlignment;

  const MyIconButton(
      {Key? key,
        this.height,
        this.prefixIcon,
        this.suffixIcon,
        this.width,
        this.elevation = 0,
        required this.onPressed,
        this.shadowColor = Colors.transparent,
        required this.text,
        this.fontColor = Colors.white,
        this.radius = 40,
        this.horizontalMargin,
        this.horizontalPadding,
        this.verticalPadding,
        this.mainAxisAlignment = MainAxisAlignment.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(horizontal: sizeW(horizontalMargin ?? 0)),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: shadowColor, blurRadius: 10, offset: Offset(0, elevation))
      ], borderRadius: BorderRadius.circular(sizeW(radius))),
      child: ElevatedButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.white.withAlpha(40)),
            backgroundColor: MaterialStateProperty.all(homeBoxColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(sizeW(radius)),
                ))),
        onPressed: onPressed,
        child: Center(
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              prefixIcon != null
                  ? Row(children: [prefixIcon!, SizedBox(width: sizeW(10))])
                  : const SizedBox(),
              SizedBox(
                width: width != null ? (width! / 100) * 60 : null,
                child: Center(
                  child: Text(
                    text,
                    //style: med14.copyWith(color: fontColor, fontSize: 12.sp),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
              suffixIcon != null
                  ? Row(children: [SizedBox(width: sizeW(10)), suffixIcon!])
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton1 extends StatelessWidget {
  CustomButton1({
    Key? key,
    required this.label,
    this.onTap,
    this.textColor,
    this.bgColor,
    required this.isSelected,
    this.fontSize
  }) : super(key: key);

  String label;
  Function()? onTap;
  Color? bgColor;
  Color? textColor;
  bool isSelected = true;
  double? fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: double.maxFinite,
        width: double.maxFinite, //width * 100,
        decoration: BoxDecoration(
          color: isSelected ? accentColorSwatch : bgColor ?? accentColorSwatch,
          border: Border.all(
              color:
              isSelected ? (bgColor ?? accentColorSwatch) : accentColorSwatch),
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Center(
            child: Text(
              label,
              style: TextStyle(
                  color:
                  (isSelected ? (bgColor ?? Colors.white) : Colors.white),
                  fontWeight: FontWeight.bold,
                  fontSize:fontSize??12.0
              ),
            )),
      ),
    );
  }
}


/*

Widget CustomButton({
  required String label,
  required Function() onTap,
  Color? bgColor,
  required bool isSelected,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: double.maxFinite,
      width: double.maxFinite, //width * 100,
      decoration: BoxDecoration(
        color: isSelected ? customWhiteColor : bgColor ?? customPrimaryColor,
        border: Border.all(
            color:
                isSelected ? bgColor ?? customPrimaryColor : customWhiteColor),
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Center(
          child: Text(
        label,
        style: TextStyle(
          color:
              isSelected ? bgColor ?? customPrimaryColor : customWhiteTextColor,
          fontWeight: FontWeight.bold,
        ),
      )),
    ),
  );
}
*/

