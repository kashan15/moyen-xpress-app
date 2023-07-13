import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/drawer_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';

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
          child: Column(
            children: [
              SizedBox(height: _height * 0.05,),
              Container(
                width: double.infinity,
                height: _height * 0.125,
                margin: EdgeInsets.symmetric(horizontal: _width * 0.035,),
                padding: EdgeInsets.symmetric(horizontal: _width * 0.15, vertical: _height * 0.8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(_width * 0.02),
                  image: const DecorationImage(
                      image: AssetImage(ImageUtils.drawerImage),
                  fit: BoxFit.cover
                  )
                ),
              ),
              SizedBox(height: 10,),

              // SizedBox(
              //   height: _height * 1,
              //   child: ListView.separated(
              //     padding: EdgeInsets.symmetric(vertical: 12),
              //     physics: const NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemCount: controller.drawerItemList.length,
              //     itemBuilder: (context, index) {
              //       return Container(
              //         padding: EdgeInsets.symmetric(horizontal: 12),
              //         child: Row(
              //           children: [
              //             Image.asset(
              //               controller.drawerItemList[index]["icon"],
              //               height: 20,
              //             ),
              //             SizedBox(width: 8,),
              //             TextWidget(
              //               textTitle: controller.drawerItemList[index]["name"],
              //               color: Colors.white,
              //               fontFamily: montserratSemiBold,
              //               // fontWeight: FontWeight.w900,
              //               fontSize: 15,
              //             ),
              //           ],
              //         ),
              //       );
              //     },
              //     separatorBuilder: (context, index) {
              //       return SizedBox(height: _height * 0.05,
              //         child: Divider(
              //           color: Colors.grey,
              //           thickness: 1,
              //         ),
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
