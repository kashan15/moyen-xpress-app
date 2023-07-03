// import 'package:flutter/material.dart';
//
// class CustomTextField1 extends StatefulWidget {
//   final String labelText;
//   final String hintText;
//
//   CustomTextField1({required this.labelText, required this.hintText});
//
//   @override
//   _CustomTextField1State createState() => _CustomTextField1State();
// }
//
// class _CustomTextField1State extends State<CustomTextField1> {
//   TextEditingController _controller = TextEditingController();
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return TextForm(
//       controller: _controller,
//       decoration: InputDecoration(
//         labelText: widget.labelText,
//         hintText: widget.hintText,
//       ),
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Please enter some text';
//         }
//         return null;
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomTextField1 extends StatelessWidget {
  // final String labelText;
  final String hintText;
  final double hintFontSize;
  final Image? suffixIcon;
  final Image? prefixIcon;
  final double fontSize;
  final dynamic fontFamily;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final EdgeInsetsGeometry? contentPadding;

  CustomTextField1({
    // required this.labelText,
    required this.hintText,
    required this.hintFontSize,
    required this.fontSize,
    this.suffixIcon,
    this.prefixIcon,
    required this.controller,
    this.onChanged,
    this.contentPadding,
    this.fontFamily
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: false,
      decoration: InputDecoration(
        // labelText: labelText,
        border: InputBorder.none,
        isDense: true,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: hintFontSize,
            fontFamily: fontFamily,
            textBaseline: TextBaseline.alphabetic,
            overflow: TextOverflow.ellipsis
        ),
        alignLabelWithHint: true, // Aligns the label with the hint text
        contentPadding: contentPadding,
        // const EdgeInsets.symmetric(
        //     vertical: 10.0,
        //     horizontal: 10.0
        // ),
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(
          minWidth: 30.0
        ),
        // suffixIconColor: Colors.transparent,
        //suffixIconConstraints: const BoxConstraints.tightFor(height: 10.0),
        prefix: prefixIcon
      ),
      textAlignVertical: TextAlignVertical.top,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        textBaseline: TextBaseline.alphabetic,
        overflow: TextOverflow.ellipsis
      ),
      onChanged: onChanged,

    );
  }
}
