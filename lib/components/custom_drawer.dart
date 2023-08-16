import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/drawer_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';

class CustomDrawer extends GetView<DrawerScreenController> {
  CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: _width * 0.8,
      child: Drawer(
        backgroundColor: homeBoxColor,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: _height * 0.05,
              ),
              Container(
                width: double.infinity,
                height: _height * 0.125,
                margin: EdgeInsets.symmetric(
                  horizontal: _width * 0.035,
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.15, vertical: _height * 0.8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(_width * 0.02),
                    image: const DecorationImage(
                        image: AssetImage(ImageUtils.drawerImage),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: Get.height * 0.02,),

              SizedBox(
                height: _height * 1,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(
                    vertical: Get.height * 0.0125,
                    horizontal: Get.width * 0.025
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.drawerItemList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        // Get.toNamed(kNavBar1);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            // Image.asset(
                            //   controller.drawerItemList[index]["icon"],
                            //   height: Get.height * 0.025,
                            // ),
                            Container(
                              height: Get.height * 0.05,
                              width: Get.width * 0.11,
                              decoration: BoxDecoration(
                                color: drawerItem,
                                borderRadius: BorderRadius.circular(
                                  Get.width * 0.015
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                    color: Colors.black.withOpacity(0.15)
                                  )
                                ]
                              ),
                              child: Center(
                                child:
                                Image.asset(
                                  controller.drawerItemList[index]["icon"],
                                  height: Get.height * 0.1,
                                ),
                              ),
                            ),
                            SizedBox(width: Get.width * 0.045,),
                            TextWidget(
                              textTitle: controller.drawerItemList[index]["name"],
                              color: Colors.white,
                              fontFamily: montserratMedium,
                              // fontWeight: FontWeight.w900,
                              fontSize: Get.height * 0.02,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: _height * 0.025,);
                  },
                ),
              ),

              // SizedBox(
              //   height: Get.height * 1,
              //   child: ListView.builder(
              //     itemCount: 5,
              //     // Replace with the actual number of items you have in the drawer
              //     itemBuilder: (context, index) {
              //       // Replace this with the desired items/widgets you want in the drawer
              //       return Column(
              //         children: [
              //           Container(
              //             padding: EdgeInsets.symmetric(horizontal: 12),
              //             child: Row(
              //               children: [
              //                 Image.asset(
              //                   controller.drawerItemList[index]["icon"],
              //                   height: 20,
              //                 ),
              //                 SizedBox(
              //                   width: 8,
              //                 ),
              //                 TextWidget(
              //                   textTitle: controller.drawerItemList[index]["name"],
              //                   color: Colors.white,
              //                   fontFamily: montserratSemiBold,
              //                   // fontWeight: FontWeight.w900,
              //                   fontSize: 15,
              //                 ),
              //               ],
              //             ),
              //           ),
              //           SizedBox(height: Get.height * 0.02,)
              //         ],
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
