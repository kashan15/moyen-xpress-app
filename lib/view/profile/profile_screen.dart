import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';

import '../../components/custom_richtext.dart';
import '../../utils/font_utils.dart';


class ProfileScreen extends GetView<ProfileController> {
  ProfileScreen({super.key,

  });

  bool willPop = true;

  List itemList = [
    {
      'icon': Icons.home_outlined,
      'name': 'My Orders'
    },
    {
      'icon': Icons.info_outline_rounded,
      'name': 'My Information'
    },{
      'icon': Icons.local_shipping_outlined,
      'name': 'Shipping Address'
    },{
      'icon': Icons.payment,
      'name': 'Payment Methods'
    },{
      'icon': Icons.settings,
      'name': 'Settings'
    },{
      'icon': Icons.logout,
      'name': 'Logout'
    },
  ];
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    controller.globalContext = context;
    return WillPopScope(
      onWillPop: () async{
        return willPop;
      },
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          // backgroundColor: backgroundColor,
          body: Column(
            children: [
              // SizedBox(height: _height * 0.03,),
              // Row(
              //   children: [
              //     IconButton(
              //         padding: EdgeInsets.only(left: _width * 0.025),
              //         constraints: const BoxConstraints(),
              //         onPressed: (){
              //           Get.back();
              //         },
              //         icon: Icon(
              //           Icons.arrow_back_ios,
              //           size: _height * 0.025,
              //         )
              //     ),
              //     Expanded(child:
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         TextWidget(
              //           textTitle: 'Profile',
              //           fontWeight: FontWeight.w700,
              //           fontSize: _height * 0.025,
              //         ),
              //       ],
              //     )
              //     )
              //   ],
              // ),
              SizedBox(height: _height * 0.03,),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: _width * 0.06
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: _width * 0.04,
                  vertical: _height * 0.025
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(_width * 0.015),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.05),
                          blurRadius: 3,
                          spreadRadius: 3,
                          offset: Offset(0, 1)
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(_width * 0.015),
                          child: Image.asset(
                            ImageUtils.profile,
                           height: _height * 0.08,
                          ),
                        ),
                        SizedBox(width: _width * 0.04,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              textTitle: 'John Smith',
                              fontFamily: poppinsMedium,
                              fontSize: _height * 0.02,
                              color: homeBoxColor,
                            ),
                            SizedBox(height: _height * 0.0,),
                            TextWidget(
                              textTitle: 'johnsmith@gmail.com',
                              fontFamily: poppinsRegular,
                              fontSize: _height * 0.015,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: _height * 0.025,),
                    CustomButton(
                      margin: EdgeInsets.symmetric(
                        horizontal: _width * 0.02
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: _height * 0.015
                      ),
                      onTap: (){
                        Get.toNamed(kEditAccount);
                      },
                      title: 'Edit Account',
                      fontFamily: poppinsMedium,
                      fontSize: _height * 0.0175,
                      textColor: Colors.white,
                      borderRadius: _width * 0.015,
                      color: homeBoxColor,
                    )
                  ],
                ),
              ),
              SizedBox(height: _height * 0.03,),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.06
                  ),
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.toNamed(kSettingsScreen);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              //horizontal: _width * 0.02,
                              vertical: _height * 0.015
                            ),
                            // color: backgroundColor,
                            child: Row(
                              children: [
                                Icon(
                                  itemList[index]['icon'],
                                color: homeBoxColor,
                                size: _height * 0.03
                                ),
                                SizedBox(width: _width * 0.03,),
                                Expanded(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextWidget(
                                      textTitle: itemList[index]['name'],
                                      fontFamily: poppinsMedium,
                                      fontSize: _height * 0.02,
                                    ),
                                    Icon(Icons.arrow_forward_ios,
                                      size: _height * 0.02,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
                        //SizedBox(height: _height * 0.01,),
                        Divider(
                          color: Colors.grey.withOpacity(0.5),
                          thickness: 1,
                        ),

                      ],
                    );
                  },
              )
            ],
          )
        ),
      ),
    );
  }
}


