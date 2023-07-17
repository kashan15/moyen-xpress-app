import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/controller/my_orders_controller.dart';
import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/lang_string_util.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';

import '../../components/custom_richtext.dart';
import '../../utils/font_utils.dart';


class MyOrdersScreen extends GetView<MyOrdersController> {
  MyOrdersScreen({super.key,

  });

  bool willPop = true;

  List items = [
    {
      "icon": ImageUtils.shippingIcon,
      "name": "Shipping Orders",
      "transparentIcon": ImageUtils.shipTransparentIcon
    },
    {
      "icon": ImageUtils.shippingIcon,
      "name": "Quote Orders",
      "transparentIcon": ImageUtils.quoteTransparentIcon
    },
    {
      "icon": ImageUtils.shippingIcon,
      "name": "Shipping Quotes",
      "transparentIcon": ImageUtils.quoteTransparentIcon
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
          backgroundColor: backgroundColor,
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: _height * 0.05,),
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
                              textTitle: 'My Orders',
                              fontWeight: FontWeight.w700,
                              fontSize: _height * 0.025,
                              color: Colors.black,
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(height: _height * 0.03,),
                Container(
                  height: Get.height * 0.25,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: _width * 0.03
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          _width * 0.02
                      ),
                      image:  const DecorationImage(image: AssetImage(
                          ImageUtils.myOrderBanner
                      ),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(height: _height * 0.03,),
                SizedBox(
                  height:  Get.height,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){},
                        child: Stack(
                            children:[
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: _width * 0.03,
                                    vertical: _height * 0.01
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: _width * 0.04,
                                    vertical: _height * 0.035
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      _width * 0.02
                                  ),
                                  gradient:  const LinearGradient(
                                    colors: [
                                      Color(0xffE66B12),
                                      Color(0xffF3921F)
                                    ],
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      items[index]["icon"],
                                    ),
                                    SizedBox(width: _width * 0.03,),
                                    Expanded(child:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextWidget(
                                          textTitle: items[index]["name"],
                                          color: Colors.white,
                                          fontFamily: poppinsMedium,
                                          fontSize: _height * 0.015,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: Get.height * 0.02,
                                          color: Colors.black,
                                        )

                                      ],
                                    )
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: _height * 0.0075,
                                  left: _width * 0.575,
                                  child: Image.asset(
                                    items[index]["transparentIcon"],
                                    height: _height * 0.1,
                                  )
                              )
                            ]),
                      );
                    }, ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


