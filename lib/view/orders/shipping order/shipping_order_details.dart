import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/controller/my_orders_controller.dart';
import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/theme.dart';
import '../../../components/custom_appbar.dart';
import '../../../components/custom_dialog.dart';
import '../../../components/custom_richtext.dart';
import '../../../controller/shipping_order_details_controller.dart';
import '../../../controller/shipping_orders_controller.dart';
import '../../../controller/shipping_quote_details_controller.dart';
import '../../../utils/font_utils.dart';



class ShippingOrderDetailsScreen extends GetView<ShippingOrderDetailsController> {
  bool check1 = false;
  ShippingOrderDetailsScreen({super.key,
    required this.check1
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
    // controller.globalContext = context;
    final ShippingOrderDetailsController controller = Get.put(ShippingOrderDetailsController());
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
            heading: check1 == false ? 'Shipping Orders' : 'Quote Orders',
            color: Colors.white,
          ),
          body: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
            child: check1 == false ?
            Column(
              children: [
                // SizedBox(height: _height * 0.02,),
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
                                    onTap: ()async{
                                      Get.dialog(
                                          const Center(
                                              child: CircularProgressIndicator(
                                                color: homeBoxColor,
                                              )
                                          ));
                                      await Future.delayed(const Duration(seconds: 2));
                                      Get.back();
                                      Get.dialog(
                                          CustomDialogSimple(
                                              title: 'Re Ordered',
                                              description: 'item has been re-ordered successfully',
                                              okTap: true
                                          )
                                      );
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
            ) :
            Column(
              children: [
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
                                    textSpan1: 'Quote ID:',
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
                                    textSpan1: 'Quote Date/Time::',
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomButton(
                                        isSelected: false,
                                        margin: EdgeInsets.zero,
                                        width: _width * 0.31,
                                        onTap: (){
                                          Get.back();
                                        },
                                        padding: EdgeInsets.symmetric(
                                          // horizontal: _width * 0.05,
                                            vertical: _height * 0.005
                                        ),
                                        title: 'Re-Order',
                                        color: Colors.grey,
                                        textColor: Colors.white,
                                        fontSize: _height * 0.01,
                                        fontFamily: poppinsRegular,
                                        borderRadius: _width * 0.008,
                                      ),
                                      CustomButton(
                                        isSelected: false,
                                        margin: EdgeInsets.zero,
                                        width: _width * 0.31,
                                        onTap: ()async {
                                          Get.dialog(
                                              const Center(
                                                  child: CircularProgressIndicator(
                                                    color: homeBoxColor,
                                                  )
                                              ));
                                          await Future.delayed(const Duration(seconds: 2));
                                          Get.back();
                                          Get.dialog(
                                              CustomDialogSimple(
                                                  title: 'Downloaded',
                                                  description: 'invoice downloaded successfully',
                                                  okTap: true
                                              )
                                          );
                                        },
                                        padding: EdgeInsets.symmetric(
                                          // horizontal: _width * 0.05,
                                            vertical: _height * 0.005
                                        ),
                                        title: 'Download Invoice',
                                        color: homeBoxColor,
                                        textColor: Colors.white,
                                        fontSize: _height * 0.01,
                                        fontFamily: poppinsRegular,
                                        borderRadius: _width * 0.008,
                                      ),
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

                      SizedBox(height: _height * 0.003,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Admin Approval',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'Approved',
                            style: CustomTheme.shippingText3,
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
                            textTitle: 'Pending',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.015,),
                      TextWidget1(
                        textTitle: 'Shipment Details',
                        style: CustomTheme.heading,
                      ),

                      Divider(
                        color: Colors.grey.withOpacity(0.3),
                        thickness: 2,
                      ),
                      SizedBox(height: _height * 0.003,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextWidget1(
                            textTitle: 'From',
                            style: CustomTheme.shortHeading,
                          ),

                        ],
                      ),
                      SizedBox(height: _height * 0.003,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Full Name',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'Smith',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Email',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'smith@gmail.com',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Country',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'USA',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'State',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'New York',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'City',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'New York',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Postal Code',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: '222222',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Phone Number',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: '58585858585',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Address1',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: 'uk, Abbeywood, 123, United Kingdom',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Address2',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: 'uk, Abbeywood, 123, United Kingdom',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      ///
                      SizedBox(height: _height * 0.01,),
                      /// To
                      Divider(
                        color: Colors.grey.withOpacity(0.3),
                        thickness: 2,
                      ),
                      SizedBox(height: _height * 0.003,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextWidget1(
                            textTitle: 'To',
                            style: CustomTheme.shortHeading,
                          ),

                        ],
                      ),
                      SizedBox(height: _height * 0.003,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Full Name',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'Smith',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Email',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'smith@gmail.com',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Country',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'USA',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'State',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'New York',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'City',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'New York',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Postal Code',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: '222222',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Phone Number',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: '58585858585',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Address1',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: 'uk, Abbeywood, 123, United Kingdom',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Address2',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: 'uk, Abbeywood, 123, United Kingdom',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.025,),

                      TextWidget1(
                        textTitle: 'Package Description',
                        style: CustomTheme.heading,
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
                            textTitle: 'Product Name',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: 'Bag',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Box Size',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: '1*1',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Quantity',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: '50',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Weight',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: '20kg',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),

                      SizedBox(height: _height * 0.03,),

                      TextWidget1(
                        textTitle: 'Shipment Cost Details',
                        style: CustomTheme.heading,
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
                            textTitle: 'Delivery Days',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: '7',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Duties',
                            style: CustomTheme.shippingText1,
                          ),
                          TextWidget1(
                            textTitle: 'Cfa600',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Shipment Cost',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: 'Cfa600',
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
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: 'Cfa600',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Fuel Surcharges',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: 'Cfa600',
                            style: CustomTheme.shippingText2,
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget1(
                            textTitle: 'Total Cost',
                            style: CustomTheme.shippingText1,
                          ),
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: 'Cfa600',
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
                          SizedBox(width: _width * 0.01,),
                          TextWidget1(
                            textTitle: 'Unpaid',
                            style: CustomTheme.shippingText4,
                          ),
                        ],
                      ),

                      SizedBox(height: _height * 0.03,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            isSelected: false,
                            margin: EdgeInsets.zero,
                            width: _width * 0.25,
                            onTap: ()async{
                              await Get.dialog(
                                  CustomDialogSimple(
                                      title: 'Rejected',
                                      description: 'item has been rejected',
                                      okTap: true
                                  )
                              );
                              Get.back();
                            },
                            padding: EdgeInsets.symmetric(
                              // horizontal: _width * 0.05,
                                vertical: _height * 0.01
                            ),
                            title: 'Reject',
                            color: Colors.red,
                            textColor: Colors.white,
                            fontSize: _height * 0.02,
                            fontFamily: poppinsRegular,
                            borderRadius: _width * 0.012,
                          ),
                          SizedBox(width: _width * 0.02,),
                          Expanded(
                            child: CustomButton(
                              isSelected: false,
                              margin: EdgeInsets.zero,
                              // width: _width * 0.31,
                              onTap: ()async{
                                await Get.dialog(
                                    CustomDialogSimple(
                                        title: 'Accepted',
                                        description: 'accepted successfully',
                                        okTap: true
                                    )
                                );
                                Get.back();
                              },
                              padding: EdgeInsets.symmetric(
                                // horizontal: _width * 0.05,
                                  vertical: _height * 0.01
                              ),
                              title: 'Accept',
                              color: homeBoxColor,
                              textColor: Colors.white,
                              fontSize: _height * 0.02,
                              fontFamily: poppinsRegular,
                              borderRadius: _width * 0.008,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: _height * 0.03,),

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


