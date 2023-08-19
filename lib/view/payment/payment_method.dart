import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/controller/payment_method_controller.dart';
import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import 'package:moyen_xpress_app/view/payment/payment_method_details.dart';

import '../../components/custom_richtext.dart';
import '../../components/primary_checkbox.dart';
import '../../utils/font_utils.dart';

class PaymentScreen extends GetView<PaymentController> {
  PaymentScreen({
    super.key,
  });

  bool willPop = true;
  int select = 0;


  List itemList = [
    {
      'icon': ImageUtils.paymentIcon,
      'logo': ImageUtils.paypalLogo,
      'color': paypalColor,


    },
    {
      'icon': ImageUtils.paymentIcon,
      'logo': ImageUtils.stripeLogo,
      'color': stripeColor,


    },
    {
      'icon': ImageUtils.paymentIcon,
      'logo': ImageUtils.walletLogo,
      'color': walletColor,


    },
    {
      'icon': ImageUtils.paymentIcon,
      'logo': ImageUtils.wireLogo,
      'color': wireColor,


    },

  ];

  final RxBool isChecked = false.obs;


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
          backgroundColor: Colors.white,
          appBar: CustomAppbar1(
            heading: 'Payment Methods',
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: _width * 0.04),
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        select == index;
                        if(index == 0){
                          Get.to(PaymentDetailsScreen(select: 0,));
                        }
                        if(index == 1){
                          Get.to(PaymentDetailsScreen(select: 1,));
                        }
                        if(index == 2){
                          Get.to(PaymentDetailsScreen(select: 2,));
                        }
                        if(index == 3){
                          Get.to(PaymentDetailsScreen(select: 3,));
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          vertical: _height * 0.02
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: _width * 0.02,
                            vertical: _height * 0.02
                        ),
                        decoration: BoxDecoration(
                          color: itemList[index]['color'],
                          borderRadius: BorderRadius.circular(
                            _width * 0.03
                          ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  offset: Offset(2, 5))
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              itemList[index]['logo'],
                              height: _height * 0.035,
                            ),
                            Image.asset(
                              itemList[index]['icon'],
                              height: _height * 0.035,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: _height * 0.02,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
