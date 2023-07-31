import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/theme.dart';
import '../../../components/custom_richtext.dart';
import '../../../controller/purchase_history_details_controller.dart';
import '../../../utils/font_utils.dart';



class PurchaseHistoryDetailsScreen extends GetView<PurchaseHistoryDetailsController> {
  PurchaseHistoryDetailsScreen({super.key,

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
                              textTitle: 'Purchase Products',
                              fontWeight: FontWeight.w700,
                              fontSize: _height * 0.025,
                              color: Colors.black,
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(height: _height * 0.01,),

                /// Main Padding
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: _width * 0.04
                  ),
                  child: Column(
                    children: [
                      /// Product Container
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: _height * 0.01,
                          //horizontal: _width * 0.03
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: _width * 0.0,
                          vertical: _height * 0.01,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              _width * 0.02
                          ),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.grey.withOpacity(0.4),
                          //       blurRadius: 1,
                          //       spreadRadius: 1,
                          //       offset: Offset(0, 4)
                          //   )
                          // ]
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
                                  TextWidget(
                                    textTitle: 'Women Shoulder Handbag',
                                    color: Colors.black,
                                    fontSize: _height * 0.0125,
                                    fontFamily: poppinsSemiBold,
                                  ),
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
                                    textSpan1: 'Size:',
                                    color1: Colors.black87,
                                    fontWeight1: FontWeight.normal,
                                    fontSize1: _height * 0.01,
                                    fontFamily1: poppinsMedium,
                                    textSpan2: ' small',
                                    color2: Colors.black,
                                    fontWeight2: FontWeight.normal,
                                    fontSize2: _height * 0.01,
                                    fontFamily2: poppinsMedium,
                                  ),
                                  SizedBox(height: _height * 0.005,),
                                  CustomButton(
                                    isSelected: false,
                                    margin: EdgeInsets.zero,
                                    width: _width * 0.375,
                                    onTap: (){
                                      Get.back();
                                    },
                                    padding: EdgeInsets.symmetric(
                                      // horizontal: _width * 0.05,
                                        vertical: _height * 0.005
                                    ),
                                    title: 'Re-Order',
                                    color: deliveredColor,
                                    textColor: Colors.white,
                                    fontSize: _height * 0.01,
                                    fontFamily: poppinsRegular,
                                    borderRadius: _width * 0.008,
                                  ),

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
                      Divider(
                        color: Colors.grey.withOpacity(0.3),
                        thickness: 2,
                      ),
                      SizedBox(height: _height * 0.003,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Seller',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'Tech Seller',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Payment Status',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'Paid',
                            style: CustomTheme.shippingText3,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Delivery Status',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'Delivered',
                            style: CustomTheme.shippingText3,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Payment Method',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'Wallet',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Order Status',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'Delivered',
                            style: CustomTheme.shippingText3,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Shipping Address',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: 'uk, Abbeywood, 123, United Kingdom',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Email Address',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'Thetest733@gmail.com',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Delivery Type',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'Express Delivery',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),

                      SizedBox(height: _height * 0.01,),

                      Divider(
                        color: Colors.grey.withOpacity(0.3),
                        thickness: 2,
                      ),
                      SizedBox(height: _height * 0.003,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Quantity',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: '100',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Subtotal',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: '\$10.00',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Shipping',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: '\$10.00',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Tax',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: '\$10.00',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Cupon',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: '00.00',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Total',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: '\$30.00',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


