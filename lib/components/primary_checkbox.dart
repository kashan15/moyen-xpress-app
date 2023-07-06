import 'package:flutter/material.dart';

class PrimaryCheckBox extends StatelessWidget {
  final bool value;
  final Color color, markColor;
  final Function(bool?) onChanged;
  PrimaryCheckBox(
      {
        required this.value,
        required this.onChanged,
        this.color = Colors.white,
        this.markColor = Colors.blue
      });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: onChanged,
      activeColor: Colors.blue,
      fillColor: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return color;
        }
        return color;
      }),
      checkColor: markColor,
    );
  }
}
