import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';

import 'new_custom_dialogue.dart';

// time = DateFormat('h:mm a').format(dateTime);
// date = DateFormat('MMM dd, yyyy').format(dateTime);

String getDate(dateTime) {
  return DateFormat('MMM dd, yyyy').format(dateTime);
}

String getTime(dateTime) {
  return DateFormat('h:mm a').format(dateTime);
}
String getTimeWithMicroSec(dateTime) {
  return DateFormat('h:mm a').format(dateTime);
}

String getDateTime(dateTime) {
  return DateFormat('MMM dd, yyyy h:mm a').format(dateTime);
}

double sizeW(double size) {
  double res = Get.width / (Get.width / size);
  return res;
}

double sizeH(double size) {
  double res = Get.height / (Get.height / size);
  return res;
}

double widthFS(double size) {
  double res = size.w;
  return res;
}

double sizeFS(double size) {
  double res = size.sp;
  return res;
}

double heightFS(double size) {
  double res = size.h;
  return res;
}

Widget height(double size) {
  return SizedBox(height: sizeH(size));
}

Widget width(double size) {
  return SizedBox(width: sizeW(size));
}

Widget divider({Color color = Colors.grey, double height = 1}) {
  return Divider(color: color, height: height);
}

Widget tab(String text) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: sizeW(10)),
    child: Text(
      text,
      //style: reg12,
    ),
  );
}

Widget customTabBar(
    {required List<Widget> tabs,
      ValueChanged? onTap,
      TabController? controller}) {
  return MyBox(
      width: Get.width,
      color: Colors.white,
      radius: 50,
      shadowColor: Colors.grey,
      horizontalMargin: 15,
      child: TabBar(
          onTap: onTap,
          controller: controller,
          labelColor: homeBoxColor,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.transparent,
          tabs: tabs));
}

Widget checkWidget({
  required bool isLoading,
  required List list,
  double? boxHeight,
  double? maxHeight,
  double? minHeight,
  double? boxWidth,
  required Widget child,
}) {
  return isLoading
      ? Container(
      constraints: maxHeight != null && minHeight != null
          ? BoxConstraints(
        minHeight: minHeight,
        maxHeight: maxHeight,
      )
          : null,
      width: boxWidth ?? Get.width,
      height: boxHeight,
      child: const Center(child: CircularProgressIndicator()))
      : list.isEmpty
      ? emptyListWidget()
      : Container(
    constraints: maxHeight != null && minHeight != null
        ? BoxConstraints(
      minHeight: minHeight,
      maxHeight: maxHeight,
    )
        : null,
    width: boxWidth ?? Get.width,
    height: boxHeight,
    child: child,
  );
}

Future showLoadingDialog(context) {
  return showDialog(
      context: context,
      builder: (_) => const Material(
        color: Colors.transparent,
        child: Center(child: CircularProgressIndicator()),
      ));
}

Widget emptyListWidget() {
  return Center(
    child: ScrollConfiguration(
      behavior: MyBehavior(),
      child: SingleChildScrollView(

        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(sizeW(20)),
          child: Column(
            children: const [
              Text("fsasg"),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget logo({size}) {
  return Icon(Icons.account_balance_outlined,);
}

Widget backButton() {
  return Row(
    children: [
      Icon(Icons.arrow_back_ios, color: homeBoxColor, size: sizeW(15)),
      SizedBox(width: sizeW(10)),
      Text("fsasg"),
    ],
  );
}

PreferredSizeWidget navbar(
    {required String title,
      GlobalKey<ScaffoldState>? scaffoldKey,
      bool back = false,
      Widget? notification,
      Widget? searchBar}) {
  return AppBar(
    iconTheme: IconThemeData(
      color: homeBoxColor, //change your color here
    ),
    backgroundColor: homeBoxColor,
    centerTitle: true,
    leading: back
        ? null
        : const SizedBox(),
    title: searchBar ??
        Text("fsxgxbg"),
    actions: [
      notification
          ??
          const SizedBox(),
      scaffoldKey != null
          ? IconButton(
        icon: const Icon(Icons.menu),
        color: homeBoxColor,
        onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
      )
          : const SizedBox(),
    ],
  );
}





Widget closeButton() {
  return IconButton(
      onPressed: () => Get.back(),
      icon: Icon(Icons.cancel, size: sizeH(30), color: homeBoxColor));
}

class MyBox extends StatelessWidget {
  final double? height;
  final double? maxHeight;
  final double? minHeight;
  final double? maxWidth;
  final double? minWidth;
  final double? width;
  final double padding;
  final Widget? child;
  final double? radius;
  final double borderWidth;
  final Color borderColor;
  final Color color;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final Color shadowColor;
  final double? horizontalMargin;
  final double? verticalMargin;
  final double margin;
  final DecorationImage? decImage;
  final Alignment? alignment;
  final List<Color>? gradientColors;
  final AlignmentGeometry? begin;
  final AlignmentGeometry? end;
  final BoxShadow? boxShadow;

  const MyBox(
      {Key? key,
        this.width,
        this.height,
        this.padding = 0,
        this.child,
        this.radius,
        this.borderWidth = 0,
        this.shadowColor = Colors.transparent,
        this.borderColor = Colors.transparent,
        this.color = Colors.transparent,
        this.horizontalPadding,
        this.topRight = 0,
        this.topLeft = 0,
        this.bottomRight = 0,
        this.bottomLeft = 0,
        this.horizontalMargin,
        this.verticalPadding,
        this.verticalMargin,
        this.margin = 0,
        this.decImage,
        this.gradientColors,
        this.alignment,
        this.end,
        this.begin,
        this.boxShadow,
        this.maxWidth,
        this.minWidth,
        this.maxHeight,
        this.minHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      width: width,
      height: height,
      constraints:/* maxHeight != null && minHeight != null*/
      /*?*/ BoxConstraints(
        minHeight: minHeight ?? 0.0,
        maxHeight: maxHeight ?? double.infinity,
        maxWidth: maxWidth ?? double.infinity,
        minWidth: minWidth ?? 0.0,
      ),
      // : null,
      padding: horizontalPadding != null || verticalPadding != null
          ? EdgeInsets.symmetric(
          horizontal:
          horizontalPadding != null ? sizeW(horizontalPadding!) : 0,
          vertical: verticalPadding != null ? sizeW(verticalPadding!) : 0)
          : EdgeInsets.all(sizeW(padding)),
      margin: horizontalMargin != null || verticalMargin != null
          ? EdgeInsets.symmetric(
          horizontal:
          horizontalMargin != null ? sizeW(horizontalMargin!) : 0,
          vertical: verticalMargin != null ? sizeW(verticalMargin!) : 0)
          : EdgeInsets.all(sizeW(margin)),
      decoration: BoxDecoration(
          color: gradientColors == null ? color : null,
          border: Border.all(color: borderColor, width: borderWidth),
          gradient: gradientColors == null
              ? null
              : begin != null && end != null
              ? LinearGradient(
              begin: begin!, end: end!, colors: gradientColors!)
              : LinearGradient(colors: gradientColors!),
          borderRadius: radius != null
              ? BorderRadius.circular(sizeW(radius!))
              : BorderRadius.only(
            topLeft: Radius.circular(sizeW(topLeft)),
            topRight: Radius.circular(sizeW(topRight)),
            bottomLeft: Radius.circular(sizeW(bottomLeft)),
            bottomRight: Radius.circular(sizeW(bottomRight)),
          ),
          image: decImage,
          boxShadow: [
            boxShadow ?? BoxShadow(
                color: shadowColor, blurRadius: 3, offset: const Offset(0, 2))
          ]),
      child: child,
    );
  }
}

customDialog({
  required BuildContext context,
  required String primaryLabel,
  required VoidCallback primaryTap,
  String? secondaryLabel,
  VoidCallback? secondaryTap,
  IconData? icon,
  Widget? asset,
  required String title,
  required String label,
}) {
  showDialog(
      context: context,
      builder: (_) => CustomOverlayX(
        icon: icon,
        asset: asset,
        title: title,
        label: label,
        primaryTap: primaryTap,
        primaryLabel: primaryLabel,
        secondaryTap: secondaryTap,
        secondaryLabel: secondaryLabel,
      ));
}

Widget loader() {
  return SizedBox(
    height: Get.height,
    width: Get.width,
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0),
      child: Container(
        color: Colors.black.withOpacity(0.1),
        child: const Center(child: CircularProgressIndicator()),
      ),
    ),
  );
}
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}