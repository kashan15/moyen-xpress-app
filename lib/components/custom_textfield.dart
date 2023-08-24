import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/test_class.dart';

import '../utils/color_utils.dart';
import '../utils/text_styles.dart';

/// Previous Login TextField
// class CustomTextField extends StatelessWidget {
//
//   TextEditingController? textEditingController;
//   Widget? suffixIcon;
//   Widget? prefixIcon;
//   String? Function(String?)? validation;
//   String? title;
//   TextInputType? inputType;
//   final bool obscureText;
//   InputBorder? inputBorder;
//   CustomTextField({
//     Key? key,
//     this.textEditingController,
//     this.suffixIcon,
//     this.prefixIcon,
//     this.title,
//     this.validation,
//     this.inputType,
//     this.inputBorder,
//     this.obscureText = false,
//
//   }) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       validator:validation,
//       controller: textEditingController,
//       keyboardType: inputType,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         border: inputBorder,
//           prefixIcon:prefixIcon,
//           suffixIcon: suffixIcon,
//           hintText: title
//       ),
//     );
//   }
// }

class CustomTextField extends StatelessWidget {

  TextEditingController? textEditingController;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? Function(String?)? validation;
  String? title;
  TextInputType? inputType;
  final bool obscureText;
  InputBorder? inputBorder;
  CustomTextField({
    Key? key,
    this.textEditingController,
    this.suffixIcon,
    this.prefixIcon,
    this.title,
    this.validation,
    this.inputType,
    this.inputBorder,
    this.obscureText = false,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:validation,
      controller: textEditingController,
      keyboardType: inputType,
      obscureText: obscureText,
      decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon:prefixIcon,
          suffixIcon: suffixIcon,
          hintText: title
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  String? topLabel;
  VoidCallback? onTap;
  Color? color;

  // String hint;
  String label;
  Color? hintColor;
  double radius;
  double height;
  Color borderColor;
  Color? shadowColor;
  double borderWidth;
  TextEditingController? controller;
  double? width;
  Widget? suffixIcon;
  String? suffixText;
  int? maxLength;
  int maxLines;
  final keyboardType;
  TextAlign? textAlign;

  ///prefixIcon can be a widget or just icon data
  final dynamic prefixIcon;
  TextInputAction? textInputAction;
  void Function(String)? onSubmitted;
  FocusNode? focusNode;
  TextStyle? style;
  bool autoFocus;
  bool obscureText;
  ValueChanged<String>? onChanged;
  final validator;
  bool? enabled;

  MyTextField(
      {Key? key,
        this.topLabel,
        this.onTap,
        this.color,
        // this.hint = '',
        this.label = '',
        this.maxLines = 1,
        this.maxLength,
        this.radius = 15,
        this.width,
        this.height = 50,
        this.hintColor,
        this.borderColor = Colors.black,
        this.shadowColor,
        this.borderWidth = 1,
        this.controller,
        this.suffixText,
        this.suffixIcon,
        this.keyboardType,
        this.prefixIcon,
        this.textInputAction,
        this.onSubmitted,
        this.focusNode,
        this.style,
        this.autoFocus = false,
        this.obscureText = false,
        this.validator,
        this.enabled,
        this.textAlign,
        this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(radius));

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (topLabel != null)
          Text(
            topLabel!,
            style: med14.copyWith(color: Colors.grey),
          ),
        SizedBox(
          // padding: EdgeInsets.symmetric(horizontal: sizeW(10)),
          height: height,
          width: width != null ? sizeW(width!) : null,
          child: Center(
            child: TextFormField(
              // expands: true,
              onTap: onTap,
              enabled: enabled,
              controller: controller,
              maxLength: maxLength,
              maxLines: maxLines,
              keyboardType: keyboardType,
              textInputAction: textInputAction,
              onChanged: onChanged,
              focusNode: focusNode,
              style: style ?? const TextStyle(color: primaryColorSwatch),
              autofocus: autoFocus,
              obscureText: obscureText,
              validator: validator,
              textAlignVertical: TextAlignVertical.center,
              textAlign: textAlign ?? TextAlign.left,
              decoration: InputDecoration(
                // focusColor: hintColor,
                suffixText: suffixText,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                errorStyle: const TextStyle(height: 0.5),
                suffixIcon: suffixIcon,
                // labelText:
                //     label == '' ? null : (topLabel != null ? null : label.tr),
                // labelStyle: TextStyle(
                //   color: hintColor ?? textGreyColor,
                //   height: 0.5,
                // ),
                label: label == ''
                    ? null
                    : (topLabel != null
                    ? null
                    : Align(
                  alignment: Alignment.center,
                  child: Text(
                    label.tr,
                    style: TextStyle(
                      color: hintColor ?? textGreyColor,
                      height: 0.5,
                    ),
                  ),
                )),
                //do not delete
                // label: Text(label.tr, style: const TextStyle(height: 2)),
                alignLabelWithHint: true,
                filled: true,
                fillColor: Colors.transparent,
                //Colors.white,
                border: border,
                focusedBorder: border,
                enabledBorder: border,
                prefixIcon: prefixIcon == null
                    ? null
                    : prefixIcon.runtimeType == IconData
                    ? Icon(
                  prefixIcon,
                  color: primaryColorSwatch,
                  size: sizeW(20),
                )
                    : prefixIcon,
              ),
              onFieldSubmitted: onSubmitted,
            ),
          ),
        ),
      ],
    );
  }
}



