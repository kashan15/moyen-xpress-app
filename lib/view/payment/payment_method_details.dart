import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/custom_textfield1.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/controller/payment_method_controller.dart';
import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';

import '../orders/my_order_details.dart';


class PaymentDetailsScreen extends GetView<PaymentController> {
  // final MyOrderDetailsScreen? nameInstance;
  int? select = 0;
  PaymentDetailsScreen({
    super.key,
    // this.nameInstance
    this.select
  });

  bool willPop = true;


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
          body: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: _width * 0.04
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: _height * 0.05,
                      ),
                      Row(
                        children: [
                          IconButton(
                              padding: EdgeInsets.zero,
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
                                    textTitle: 'Payment Method',
                                    // textTitle: nameInstance!.name,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: poppinsSemiBold,
                                    fontSize: _height * 0.025,
                                    color: Colors.black,
                                  ),
                                ],
                              ))
                        ],
                      ),
                      SizedBox(
                        height: _height * 0.03,
                      ),
                      select == 0 ?
                      Image.asset(
                        ImageUtils.paypalLogo,
                        height: _height * 0.1,
                      ) :
                          select == 1 ?
                          Image.asset(
                            ImageUtils.stripeLogo,
                            height: _height * 0.1,
                          ) :
                             select == 2 ?
                             Image.asset(
                               ImageUtils.walletLogo,
                               height: _height * 0.1,
                             ) :
                             select == 3 ?
                             Image.asset(
                               ImageUtils.wireLogo,
                               height: _height * 0.1,
                             ) : const SizedBox(),
                      SizedBox(
                        height: _height * 0.03,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextWidget(
                          textTitle: 'Enter Card Number',
                          fontWeight: FontWeight.w700,
                          fontFamily: poppinsMedium,
                          fontSize: _height * 0.015,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.01,
                      ),
                      Container(
                          height: _height * 0.06,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(_width * 0.015),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.8)
                            ),
                          ),
                          child: CustomTextField1(
                            hintText: '50,000000',
                            hintFontSize: _height * 0.0175,
                            fontSize: _height * 0.0175,
                            fontFamily: poppinsMedium,
                            contentPadding:
                            EdgeInsets.symmetric(
                                vertical: Get.height * 0.015,
                                horizontal: Get.width * 0.02
                            ),
                            controller: controller.amountController,
                            onChanged: (value) {
                              print(value);
                            },
                          )
                      ),

                      SizedBox(
                        height: _height * 0.03,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextWidget(
                          textTitle: 'Enter Card Holder Name',
                          fontWeight: FontWeight.w700,
                          fontFamily: poppinsMedium,
                          fontSize: _height * 0.015,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.01,
                      ),
                      Container(
                          height: _height * 0.06,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(_width * 0.015),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.8)
                            ),
                          ),
                          child: CustomTextField1(
                            hintText: 'John Smith',
                            hintFontSize: _height * 0.0175,
                            fontSize: _height * 0.0175,
                            fontFamily: poppinsMedium,
                            contentPadding:
                            EdgeInsets.symmetric(
                                vertical: Get.height * 0.015,
                                horizontal: Get.width * 0.02
                            ),
                            controller: controller.nameController,
                            onChanged: (value) {
                              print(value);
                            },
                          )
                      ),

                      SizedBox(
                        height: _height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  textTitle: 'Enter Date',
                                  fontWeight: FontWeight.w700,
                                  fontFamily: poppinsMedium,
                                  fontSize: _height * 0.015,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: _height * 0.01,),
                                Container(
                                    height: _height * 0.06,
                                    width: Get.width * 1,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(_width * 0.015),
                                      border: Border.all(
                                          color: Colors.grey.withOpacity(0.8)
                                      ),
                                    ),
                                    child: CustomTextField1(
                                      hintText: 'MM/DD/YYYY',
                                      hintFontSize: _height * 0.0175,
                                      fontSize: _height * 0.0175,
                                      fontFamily: poppinsMedium,
                                      contentPadding:
                                      EdgeInsets.symmetric(
                                          vertical: Get.height * 0.015,
                                          horizontal: Get.width * 0.02
                                      ),
                                      controller: controller.dateController,
                                      onChanged: (value) {
                                        print(value);
                                      },
                                    )
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: _width * 0.08,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  textTitle: 'Enter CVV',
                                  fontWeight: FontWeight.w700,
                                  fontFamily: poppinsMedium,
                                  fontSize: _height * 0.015,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: _height * 0.01,),
                                Container(
                                    height: _height * 0.06,
                                    width: Get.width * 1,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(_width * 0.015),
                                      border: Border.all(
                                          color: Colors.grey.withOpacity(0.8)
                                      ),
                                    ),
                                    child: CustomTextField1(
                                      hintText: '123',
                                      hintFontSize: _height * 0.0175,
                                      fontSize: _height * 0.0175,
                                      fontFamily: poppinsMedium,
                                      contentPadding:
                                      EdgeInsets.symmetric(
                                          vertical: Get.height * 0.015,
                                          horizontal: Get.width * 0.02
                                      ),
                                      controller: controller.cvvController,
                                      onChanged: (value) {
                                        print(value);
                                      },
                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      CustomButton(
                        margin: EdgeInsets.zero,
                        padding:
                        EdgeInsets.symmetric(
                            vertical: _height * 0.02
                        ),
                        onTap: () {},
                        title: 'Next',
                        fontFamily: poppinsMedium,
                        fontSize: _height * 0.0175,
                        textColor: Colors.white,
                        borderRadius: _width * 0.015,
                        color: homeBoxColor,
                        isSelected: false,
                      ),
                      SizedBox(
                        height: _height * 0.05,
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
