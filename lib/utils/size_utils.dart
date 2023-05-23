import 'package:flutter/material.dart';

// class CustomSize{
//   static CustomSize instance = new CustomSize();
//
//   static CustomSize getInstance() {
//     return instance;
//   }
//
//   void init(BuildContext context){
//     double _heightGlobal = MediaQuery.of(context).size.height;
//     double _widthGlobal = MediaQuery.of(context).size.width;
//   }
// }

 double _heightGlobal(BuildContext context, double height) {
   double _height = MediaQuery.of(context).size.height * height;
   return _height;
 }

double _widthGlobal(BuildContext context, double width) {
  double _width = MediaQuery.of(context).size.height * width;
  return _width;
}