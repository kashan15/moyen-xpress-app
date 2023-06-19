import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_richtext.dart';
import 'package:moyen_xpress_app/controller/categories_controller.dart';
import 'package:moyen_xpress_app/controller/notification_controller.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';

import '../../components/text_widget.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';
import '../../utils/image_utils.dart';

class NotificationScreen extends GetView<NotificationController> {
  NotificationScreen({Key? key}) : super(key: key);

  List orderNumber = [
    {
      "order": "#8585858585"
    },{
      "order": "#8585858585"
    },{
      "order": "#8585858585"
    },{
      "order": "#8585858585"
    },{
      "order": "#8585858585"
    },{
      "order": "#8585858585"
    },{
      "order": "#8585858585"
    },{
      "order": "#8585858585"
    },{
      "order": "#8585858585"
    },{
      "order": "#8585858585"
    },{
      "order": "#8585858585"
    },{
      "order": "#8585858585"
    },
  ];

  @override
  Widget build(BuildContext context) {
    controller.globalContext = context;
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return WillPopScope(
        onWillPop: ()async{
          return false;
        },
        child: SafeArea(
          top: false,
            bottom: false,
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: _height * 0.02,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: _width * 0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            textTitle: 'Notifications',
                            fontSize: _height * 0.02,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          TextWidget(
                            textTitle: 'mark as read',
                            fontSize: _height * 0.015,
                            fontWeight: FontWeight.w600,
                            color: homeBoxColor,
                          ),
                        ],

                      ),
                    ),
                    //SizedBox(height: _height * 0.02,),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: orderNumber.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: _width * 0.03,
                            vertical: _height * 0.015
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: _width * 0.02,
                              vertical: _height * 0.015
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(_width * 0.02),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 3,
                                //spreadRadius: 5,
                                offset: Offset(0, 5), // Shadow position
                              ),],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                ImageUtils.notificationIcon,
                                height: _height * 0.025,
                              ),
                              CustomRichText(
                                textSpan1: 'order ',
                                textSpan2: orderNumber[index]["order"],
                                textSpan3: ' has been placed',
                                color1: Colors.black,
                                color2: homeBoxColor,
                                color3: Colors.black,
                              ),
                              TextWidget(
                                textTitle: '1m ago',
                                fontSize: _height * 0.015,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey.withOpacity(0.8),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }
}
