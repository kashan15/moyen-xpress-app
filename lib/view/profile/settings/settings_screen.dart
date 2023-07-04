import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/components/theme_container.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
import 'package:moyen_xpress_app/controller/settings_screen_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';

import '../../../components/custom_settings_button.dart';


class SettingsScreen extends GetView<SettingsController> {
  SettingsScreen({
    super.key,
  });

  bool willPop = true;


  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    controller.globalContext = context;
    return WillPopScope(
      onWillPop: () async {
        return willPop;
      },
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: backgroundColor,
          body: Column(
            children: [
              SizedBox(
                height: _height * 0.05,
              ),
              Row(
                children: [
                  IconButton(
                      padding: EdgeInsets.only(left: _width * 0.025),
                      constraints: const BoxConstraints(),
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: _height * 0.025,
                      )),
                  Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(
                            textTitle: 'Settings',
                            fontWeight: FontWeight.w700,
                            fontSize: _height * 0.025,
                            color: Colors.black,
                          ),
                        ],
                      ))
                ],
              ),

              SizedBox(height: _height * 0.05,),
              Padding(
                padding: EdgeInsets.symmetric(
                horizontal: _width * 0.04
              ),
                child: Row(
                  children: [
                    TextWidget(
                      textTitle: 'Notifications',
                      fontWeight: FontWeight.w700,
                      fontSize: _height * 0.02,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(height: _height * 0.02,),
              SettingsContainer(
                color: Colors.white,
                borderRadius: _width * 0.02,

                title1: 'ON',
                title2: 'OFF',
                fontSize: _height * 0.015,
                fontFamily: poppinsSemiBold,
              ),

              SizedBox(height: _height * 0.05,),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.04
                ),
                child: Row(
                  children: [
                    TextWidget(
                      textTitle: 'Messages',
                      fontWeight: FontWeight.w700,
                      fontSize: _height * 0.02,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(height: _height * 0.02,),
              SettingsContainer(
                color: Colors.white,
                borderRadius: _width * 0.02,
                title1: 'Seller Promotional Messages',
                title2: 'Seller Promotional Messages',
                fontSize: _height * 0.015,
                fontFamily: poppinsSemiBold,
              ),

              SizedBox(height: _height * 0.05,),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.04
                ),
                child: Row(
                  children: [
                    TextWidget(
                      textTitle: 'Dark Mode',
                      fontWeight: FontWeight.w700,
                      fontSize: _height * 0.02,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(height: _height * 0.02,),
              ThemeContainer(
                color: Colors.white,
                borderRadius: _width * 0.02,
                title1: 'ON',
                title2: 'OFF',
                fontSize: _height * 0.015,
                fontFamily: poppinsSemiBold,
              )
            ],
          ),
        ),
      ),
    );
  }
}
