import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/components/custom_dialog.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/view/orders/shipping%20order/shipping_orders.dart';
import '../../components/custom_grid_button.dart';
import '../../components/rating_widget.dart';
import '../../controller/store_screen_controller.dart';
import '../../utils/font_utils.dart';
import '../../utils/theme.dart';


class StoreScreen extends GetView<StoreScreenController> {
  StoreScreen({super.key,

  });

  bool willPop = true;
  int select = 0;

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

  List storeList = [
    {
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },
    {
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;
    controller.globalContext = context;
    return WillPopScope(
      onWillPop: () async{
        return willPop;
      },
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: CustomAppbar1(
            heading: 'Stores',
          ),
          body: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: _height * 0.015,),

                /// Banner
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

                GridView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: _width * 0.06,
                      vertical: _height * 0.02
                  ),
                  itemCount: storeList.length, // Number of containers
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columnsCount,

                      childAspectRatio: Get.width*1.35 / Get.height*1.04,
                      // crossAxisSpacing: 25.0,
                      // mainAxisSpacing: 25.0,
                      crossAxisSpacing: Get.width * 0.06,
                      mainAxisSpacing: Get.height * 0.025
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // Build each container
                    return  GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        // padding: EdgeInsets.symmetric(horizontal: _width * 0.0225, vertical: _height * 0.0125),
                        decoration: BoxDecoration(
                          color: gridColor,
                          borderRadius: BorderRadius.circular(_width * 0.025),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 3,
                              //spreadRadius: 5,
                              offset: Offset(0, 5), // Shadow position
                            ),],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: _height * 0.015,),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: _width * 0.06,),
                              // padding: EdgeInsets.symmetric(horizontal: _width * 0.01, vertical: _height * 0.02),
                              height: _height * 0.15,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: gridColor,
                                  image: DecorationImage(image: AssetImage(
                                      storeList[index]["image"]
                                  ),
                                      fit: BoxFit.contain
                                  )
                              ),
                            ),
                            SizedBox(height: _height * 0.015,),
                            TextWidget1(
                              textTitle: storeList[index]["name"],
                              style: CustomTheme.topProductsName,
                            ),
                            SizedBox(height: _height * 0.0025,),
                            RatingWidget(
                              initialRating: 4.5,
                            ),
                            SizedBox(height: _height * 0.01,),
                            CustomGridButton(
                              onTap: (){},
                              margin: EdgeInsets.symmetric(horizontal: _width * 0.06),
                              title: 'View Shop',
                            )
                          ],
                        ),

                      ),
                    );
                  },
                ),

                SizedBox(height: _height * 0.05,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


