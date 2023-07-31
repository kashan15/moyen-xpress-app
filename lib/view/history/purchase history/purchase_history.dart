import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/controller/my_orders_controller.dart';
import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
import 'package:moyen_xpress_app/controller/purchase_history_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import '../../../components/custom_richtext.dart';
import '../../../controller/shipping_orders_controller.dart';
import '../../../utils/font_utils.dart';



class PurchaseHistoryScreen extends GetView<PurchaseHistoryController> {
  PurchaseHistoryScreen({super.key,

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
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
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
                              textTitle: 'Purchase History',
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
                  color: Colors.white,
                  height: Get.height,
                  child: ListView.builder(
                    // physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Get.toNamed(kPurchaseHistoryDetails);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: _height * 0.01,
                              horizontal: _width * 0.03
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: _width * 0.04,
                            vertical: _height * 0.02,
                          ),
                          decoration: BoxDecoration(
                              color: historyBackground,
                              borderRadius: BorderRadius.circular(
                                  _width * 0.02
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    offset: Offset(0, 4)
                                )
                              ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: _height * 0.095,
                                  width: _width * 0.2,
                                  decoration: BoxDecoration(
                                      color: cartBoxColor,
                                      borderRadius: BorderRadius.circular(_width * 0.02),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.4),
                                            blurRadius: 1,
                                            spreadRadius: 1,
                                            offset: Offset(0, 4)
                                        )
                                      ]
                                  ),
                                  alignment: Alignment.center,
                                  child:
                                  Container(
                                    height: _height * 0.08,
                                    width: _width * 0.160,
                                    decoration: BoxDecoration(
                                      color: cartBoxColor,
                                      borderRadius: BorderRadius.circular(_width * 0.02),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            ImageUtils.smallBag
                                        ),
                                        alignment: Alignment.center,
                                        fit: BoxFit.contain,
                                        // ),
                                      ),
                                    ),
                                  )
                              ),
                              SizedBox(width: _width * 0.04,),
                              Expanded(
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: _height * 0.01,),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:[
                                          TextWidget(
                                            textTitle: 'Women Shoulder Handbag',
                                            color: Colors.black,
                                            fontSize: _height * 0.0125,
                                            fontFamily: poppinsSemiBold,
                                          ),
                                          TextWidget(
                                            textTitle: 'Delivered',
                                            color: deliveredColor,
                                            fontSize: _height * 0.0125,
                                            fontFamily: poppinsRegular,
                                          ),
                                        ]),
                                    CustomRichText(
                                      textSpan1: 'Order ID:',
                                      color1: Colors.black87,
                                      fontWeight1: FontWeight.normal,
                                      fontSize1: _height * 0.01,
                                      fontFamily1: poppinsMedium,
                                      textSpan2: ' 85858-2252525',
                                      color2: homeBoxColor,
                                      fontWeight2: FontWeight.normal,
                                      fontSize2: _height * 0.01,
                                      fontFamily2: poppinsRegular,
                                    ),
                                    CustomRichText(
                                      textSpan1: 'Order Date/Time::',
                                      color1: Colors.black87,
                                      fontWeight1: FontWeight.normal,
                                      fontSize1: _height * 0.01,
                                      fontFamily1: poppinsMedium,
                                      textSpan2: ' 4/7/2023 10:00am',
                                      color2: Colors.black,
                                      fontSize2: _height * 0.01,
                                      fontFamily2: poppinsMedium,
                                    ),
                                    CustomRichText(
                                      textSpan1: 'Quantity:',
                                      color1: Colors.black87,
                                      fontWeight1: FontWeight.normal,
                                      fontSize1: _height * 0.01,
                                      fontFamily1: poppinsMedium,
                                      textSpan2: ' 01',
                                      color2: homeBoxColor,
                                      fontWeight2: FontWeight.normal,
                                      fontSize2: _height * 0.01,
                                      fontFamily2: poppinsRegular,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomRichText(
                                          textSpan1: 'Total Amount:',
                                          color1: Colors.black87,
                                          fontWeight1: FontWeight.normal,
                                          fontSize1: _height * 0.01,
                                          fontFamily1: poppinsMedium,
                                          textSpan2: ' US \$4.00',
                                          color2: Colors.black,
                                          fontSize2: _height * 0.01,
                                          fontFamily2: poppinsMedium,
                                        ),
                                        IconButton(
                                            padding: EdgeInsets.zero,
                                            constraints: const BoxConstraints(),
                                            onPressed: (){},
                                            icon: Image.asset(
                                              ImageUtils.deleteIcon,
                                              height: Get.height * 0.02,
                                            )
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              // SizedBox(width: _width * 0.04,),
                              // Expanded(
                              //   child: Column(
                              //     crossAxisAlignment: CrossAxisAlignment.end,
                              //     mainAxisAlignment: MainAxisAlignment.end,
                              //     children: [
                              //       Icon(
                              //         Icons.delete,
                              //         size: _height * 0.01,
                              //       )
                              //     ],
                              //   ),
                              // )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: _height * 0.2,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


