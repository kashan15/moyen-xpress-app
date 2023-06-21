import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {

  TextEditingController? textEditingController;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? Function(String?)? validation;
  String? title;
  TextInputType? inputType;
  final bool obscureText;
  CustomTextField({
    Key? key,
    this.textEditingController,
    this.suffixIcon,
    this.prefixIcon,
    this.title,
    this.validation,
    this.inputType,
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
          prefixIcon:prefixIcon,
          suffixIcon: suffixIcon,
          hintText: title
      ),
    );
  }
}



