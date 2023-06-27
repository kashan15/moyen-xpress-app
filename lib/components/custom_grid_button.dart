import 'package:flutter/material.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';

import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class CustomGridButton extends StatelessWidget {
  dynamic title;
  dynamic margin;
  void Function()? onTap;
  CustomGridButton({
    this.title,
    this.onTap,
    this.margin
});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: EdgeInsets.symmetric(horizontal: _width * 0.05, vertical: _height * 0.005),
        decoration: BoxDecoration(
            color: homeBoxColor,
            borderRadius: BorderRadius.circular(_width * 0.01)
        ),
        child: Center(
          child: TextWidget(
            textTitle: title,
            fontFamily: montserratBold,
            fontSize: 10.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  dynamic title;
  dynamic margin;
  dynamic padding;
  final Color? color;
  final Color? textColor;
  final double? borderRadius;
  final double? fontSize;
  final double? height;
  final double? width;
  dynamic fontFamily;
  void Function()? onTap;
  CustomButton({
    this.title,
    this.onTap,
    this.margin,
    this.padding,
    this.color,
    this.borderRadius,
    this.textColor,
    this.fontSize,
    this.fontFamily,
    this.height,
    this.width
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: padding,
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius!)
        ),
        child: Center(
          child: TextWidget(
            textTitle: title,
            fontFamily: fontFamily,
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

class ShowMoreButton extends StatelessWidget {
  dynamic title;
  void Function()? onTap;
  ShowMoreButton({
    this.title,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: _width * 0.04, vertical: _height * 0.01),
        decoration: BoxDecoration(
            color: homeBoxColor,
            borderRadius: BorderRadius.circular(_width * 0.01)
        ),
        child: Center(
          child: TextWidget(
            textTitle: title,
            fontFamily: montserratBold,
            fontSize: 10.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ShopNowButton extends StatelessWidget {
  dynamic title;
  void Function()? onTap;
  dynamic color;
  dynamic textColor;
  ShopNowButton({
    this.title,
    this.onTap,
    this.color,
    this.textColor
  });

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: _width * 0.0425, vertical: _height * 0.0065),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(_width * 0.01)
        ),
        child: Center(
          child: TextWidget(
            textTitle: title,
            fontFamily: montserratBold,
            fontSize: 10.0,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
