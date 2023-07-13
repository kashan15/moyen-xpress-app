import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  dynamic textTitle;
  dynamic color;
  dynamic fontSize;
  dynamic fontFamily;
  dynamic textAlign;
  dynamic letterSpacing;
  dynamic height;
  dynamic maxLines;
  dynamic overFlow;
  dynamic fontWeight;
  dynamic decoration;

  TextWidget(
      {
        this.textAlign,
        this.textTitle,
        this.color,
        this.fontSize,
        this.fontFamily,
        this.letterSpacing,
        this.height,
        this.maxLines,
        this.fontWeight,
        this.overFlow,
        this.decoration
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      textTitle,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
          decoration: decoration,
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          fontWeight: fontWeight,
          overflow: overFlow),
    );
  }
}

class TextWidget1 extends StatelessWidget {
  dynamic textTitle;
  dynamic textAlign;
  dynamic maxLines;
  dynamic overFlow;
  TextStyle? style;

  TextWidget1(
      {
        this.textAlign,
        this.textTitle,
        this.maxLines,
        this.overFlow,
        this.style
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      textTitle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overFlow,
      style: style
    );
  }
}
