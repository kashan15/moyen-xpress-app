import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  String? textSpan1;
  String? textSpan2;
  String? textSpan3;
  Color? color1;
  double? fontSize1;
  String? fontFamily1;
  dynamic textAlign1;
  double? letterSpacing1;
  double? height1;
  double? maxLines1;
  String? overFlow1;
  double? fontWeight1;
  dynamic decoration1;
  Color? color2;
  double? fontSize2;
  String? fontFamily2;
  dynamic textAlign2;
  double? letterSpacing2;
  double? height2;
  double? maxLines2;
  String? overFlow2;
  double? fontWeight2;
  dynamic decoration2;
  Color? color3;
  double? fontSize3;
  String? fontFamily3;
  dynamic textAlign3;
  double? letterSpacing3;
  double? height3;
  double? maxLines3;
  String? overFlow3;
  double? fontWeight3;
  dynamic decoration3;
  CustomRichText({
    this.textSpan1,
    this.textSpan2,
    this.textSpan3,
    this.textAlign1,
    this.color1,
    this.fontSize1,
    this.fontFamily1,
    this.letterSpacing1,
    this.height1,
    this.maxLines1,
    this.fontWeight1,
    this.overFlow1,
    this.decoration1,
    this.textAlign2,
    this.color2,
    this.fontSize2,
    this.fontFamily2,
    this.letterSpacing2,
    this.height2,
    this.maxLines2,
    this.fontWeight2,
    this.overFlow2,
    this.decoration2,
    this.textAlign3,
    this.color3,
    this.fontSize3,
    this.fontFamily3,
    this.letterSpacing3,
    this.height3,
    this.maxLines3,
    this.fontWeight3,
    this.overFlow3,
    this.decoration3
});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:  TextSpan(
        text: textSpan1,
        style: TextStyle(
          color: color1,
            fontWeight: FontWeight.normal
        ),
        children: <TextSpan>[
          TextSpan(
              text: textSpan2,
              style:
              TextStyle(
                color: color2,
                  fontWeight: FontWeight.bold
              )
          ),
          TextSpan(
              text: textSpan3,
              style:
              TextStyle(
                  color: color3,
                  fontWeight: FontWeight.normal
              )
          ),
        ],
      ),
    );
  }
}
