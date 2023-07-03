import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/test_class.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';

import '../utils/text_styles.dart';
import 'new_custom_buttons.dart';


class CustomOverlayX extends StatefulWidget {
  final String primaryLabel;
  final VoidCallback primaryTap;
  final String? secondaryLabel;
  final VoidCallback? secondaryTap;
  final IconData? icon;
  final Widget? asset;
  final String title;
  final String label;

  const CustomOverlayX(
      {this.icon,
        this.asset,
        required this.title,
        required this.label,
        required this.primaryLabel,
        this.secondaryLabel,
        required this.primaryTap,
        this.secondaryTap,
        super.key});

  @override
  State<CustomOverlayX> createState() => _CustomOverlayXState();
}

class _CustomOverlayXState extends State<CustomOverlayX>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    scaleAnimation = CurvedAnimation(parent: controller, curve: Curves.easeInOut
      // fastLinearToSlowEaseIn
    );
    controller.addListener(() => {setState(() {})});
    controller.forward();
    super.initState();
  }

  late final AnimationController controller;
  late final Animation<double> scaleAnimation;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Material(
            color: Colors.transparent,
            child: ScaleTransition(
              scale: scaleAnimation,
              child: MyBox(
                margin: 20,
                padding: 20,
                color: homeBoxColor,
                radius: 10,
                child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Center(
                        child: widget.icon != null
                            ? Icon(widget.icon,
                            color: homeBoxColor, size: sizeW(60))
                            : widget.asset,
                      ),
                      MyBox(
                          padding: 10,
                          child: Column(
                            children: [
                              Text(widget.title.tr,
                                  textAlign: TextAlign.center,
                                  //style: med18
                              ),
                              height(10),
                              Text(widget.label.tr,
                                  textAlign: TextAlign.center,
                                  //style: med14.copyWith(color: Colors.grey)
                              ),
                              height(30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Button(
                                      text: widget.primaryLabel.tr,
                                      height: 40,
                                      onPressed: widget.primaryTap,
                                    ),
                                  ),
                                  width(20),
                                  Expanded(
                                    child: Button(
                                      text: widget.secondaryLabel?.tr ??
                                          "no text",
                                      height: 40,
                                      onPressed: widget.secondaryTap ??
                                              () => Get.back(),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ]),
              ),
            )));
  }
}

class AlertOverlay extends StatefulWidget {
  final String? title;
  final String label;
  final IconData? icon;
  final Widget? asset;
  final String? primaryLabel;
  final VoidCallback? primaryTap;

  const AlertOverlay(
      {this.title,
        required this.label,
        this.icon,
        this.asset,
        this.primaryLabel,
        this.primaryTap,
        super.key});

  @override
  State<AlertOverlay> createState() => _AlertOverlayState();
}

class _AlertOverlayState extends State<AlertOverlay>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    scaleAnimation = CurvedAnimation(parent: controller, curve: Curves.easeInOut
      // fastLinearToSlowEaseIn
    );
    controller.addListener(() => {setState(() {})});
    controller.forward();
    super.initState();
  }

  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Material(
            color: Colors.transparent,
            child: ScaleTransition(
              scale: scaleAnimation,
              child: MyBox(
                margin: 20,
                padding: 20,
                color: homeBoxColor,
                radius: 10,
                child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Center(
                        child: widget.icon != null
                            ? Icon(widget.icon,
                            color: homeBoxColor, size: sizeW(60))
                            : widget.asset,
                      ),
                      MyBox(
                          padding: 10,
                          child: Column(
                            children: [
                              widget.title == null
                                  ? const SizedBox()
                                  : Text(widget.title!.tr,
                                  textAlign: TextAlign.center,
                                 // style: med18
                              ),
                              height(10),
                              Text(widget.label.tr,
                                  textAlign: TextAlign.center,
                                 // style: med14.copyWith(color: Colors.grey)
                              ),
                              height(30),
                              Button(
                                text: widget.primaryLabel?.tr ?? "OK",
                                height: 40,
                                onPressed:
                                widget.primaryTap ?? () => Get.back(),
                              )
                            ],
                          )),
                    ]),
              ),
            )));
  }
}

class CustomDialog1 extends StatefulWidget {
  String primaryLabel;
  VoidCallback primaryTap;
  String? secondaryLabel;
  Function()? secondaryTap;
  IconData? icon;
  Widget? asset;
  String title;
  String label;
  Widget? child;

  CustomDialog1(
      {this.icon,
        this.asset,
        required this.title,
        required this.label,
        required this.primaryLabel,
        this.secondaryLabel,
        required this.primaryTap,
        this.secondaryTap,
        this.child,
        super.key});

  @override
  State<CustomDialog1> createState() => _CustomDialog1State();
}

class _CustomDialog1State extends State<CustomDialog1>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    scaleAnimation = CurvedAnimation(parent: controller, curve: Curves.easeInOut
      // fastLinearToSlowEaseIn
    );
    controller.addListener(() => {setState(() {})});
    controller.forward();
    super.initState();
  }

  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Material(
            color: Colors.transparent,
            child: ScaleTransition(
              scale: scaleAnimation,
              child: MyBox(
                margin: 20,
                padding: 20,
                color: textWhiteColor,
                radius: 10,
                child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Center(
                        child: widget.icon != null
                            ? Icon(widget.icon,
                            color: primaryColorSwatch, size: sizeW(60))
                            : widget.asset,
                      ),
                      MyBox(
                          padding: 10,
                          child: Column(
                            children: [
                              Text(widget.title.tr,
                                  textAlign: TextAlign.center, style: med18),
                              height(10),
                              Text(widget.label.tr,
                                  textAlign: TextAlign.center,
                                  style: med14.copyWith(color: textBlackColor)),
                              widget.child ?? const SizedBox(),
                              height(30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Button(
                                      text: widget.primaryLabel.tr,
                                      height: 40,
                                      onPressed: widget.primaryTap,
                                    ),
                                  ),
                                  width(20),
                                  Expanded(
                                    child: Button(
                                      text: widget.secondaryLabel!.tr,
                                      height: 40,
                                      onPressed: widget.secondaryTap,
                                    ),
                                  ),

                                  /// Previous Secondary Tap
                                  // Expanded(
                                  //   child: Button(
                                  //     text: widget.secondaryLabel?.tr ??
                                  //         noSUtil.tr,
                                  //     height: 40,
                                  //     onPressed: ()=>
                                  //     widget.secondaryTap ??
                                  //         () => Get.back(closeOverlays: true),
                                  //   ),
                                  // ),
                                ],
                              )
                            ],
                          )),
                    ]),
              ),
            )));
  }
}
