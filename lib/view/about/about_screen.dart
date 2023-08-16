import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/components/custom_dialog.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/view/orders/shipping%20order/shipping_orders.dart';
import '../../components/custom_grid_button.dart';
import '../../components/custom_richtext.dart';
import '../../components/rating_widget.dart';
import '../../controller/about_screen_controller.dart';
import '../../controller/store_home_controller.dart';
import '../../controller/store_screen_controller.dart';
import '../../utils/font_utils.dart';
import '../../utils/route_utils.dart';
import '../../utils/theme.dart';


class AboutScreen extends GetView<AboutScreenController> {
  AboutScreen({super.key,

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

  List topSelling = [
    {
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },
    {
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },{
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },{
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },
  ];

  List newArrivals = [
    {
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },
    {
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },{
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },{
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },
  ];
  List featuredProducts = [
    {
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },
    {
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },{
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },{
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
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
            heading: 'About',
          ),
          body: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: _height * 0.015,),

                /// Banner
                Container(
                  height: Get.height * 0.25 ,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: _width * 0.03
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          _width * 0.02
                      ),
                      image:  const DecorationImage(image: AssetImage(
                          ImageUtils.aboutBanner
                      ),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(height: _height * 0.015,),

                CustomRichText(
                  textSpan1: 'Shop anything & make your life easy.',
                  fontFamily1: poppinsSemiBold,
                  fontSize1: Get.height * 0.02,
                  color1: Colors.black,
                  textAlign1: TextAlign.start,
                  textSpan2: '\nMoyen Xpress makes your life easy, with one touch of a button you can buy anything\nfrom anywhere throw Moyen Xpress and get a top notch quality of the product. We\nalso have lots of variety of services that has been listed for customers accessibility\nand ease.\n\nMoyen Xpress is on the verge to become the worlds largest E-Commerce store and\n will make sure that its members get satisfied and make their life easier.',
                  fontFamily2: poppinsRegular,
                  fontSize2: Get.height * 0.01,
                  color2: Colors.black,
                  textAlign2: TextAlign.start,

                ),

                SizedBox(height: _height * 0.035,),
                CustomRichText(
                  textSpan1: 'How we become a huge family.',
                  fontFamily1: poppinsSemiBold,
                  fontSize1: Get.height * 0.02,
                  color1: Colors.black,
                  textAlign1: TextAlign.start,
                  textSpan2: '\nMoyen Xpress makes your life easy, with one touch of a button you can buy anything\nfrom anywhere throw Moyen Xpress and get a top notch quality of the product. We\nalso have lots of variety of services that has been listed for customers accessibility\nand ease.\n\nMoyen Xpress is on the verge to become the worlds largest E-Commerce store and\n will make sure that its members get satisfied and make their life easier.',
                  fontFamily2: poppinsRegular,
                  fontSize2: Get.height * 0.01,
                  color2: Colors.black,
                  textAlign2: TextAlign.start,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


