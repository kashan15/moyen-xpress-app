import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';

import '../../components/custom_richtext.dart';
import '../../controller/purchase_history_controller.dart';
import '../../utils/font_utils.dart';

class PurchaseHistory extends GetView<PurchaseHistoryController> {
  PurchaseHistory({
    super.key,
  });

  bool willPop = true;

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
          body: Column(
              children: [
            SizedBox(
              height: _height * 0.03,
            ),
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
                      fontFamily: poppinsSemiBold,
                      fontSize: _height * 0.025,
                    ),
                  ],
                ))
              ],
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            ListView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.zero,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                    margin: EdgeInsets.symmetric(
                        vertical: _height * 0.01, horizontal: _width * 0.04),
                    padding: EdgeInsets.symmetric(
                      horizontal: _width * 0.04,
                      vertical: _height * 0.02,
                    ),
                    decoration: BoxDecoration(
                        color: historyBackground,
                        borderRadius: BorderRadius.circular(_width * 0.02),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(0, 3))
                        ]),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: _height * 0.095,
                              width: _width * 0.2,
                              decoration: BoxDecoration(
                                  color: cartBoxColor,
                                  borderRadius:
                                      BorderRadius.circular(_width * 0.02),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.4),
                                        blurRadius: 1,
                                        spreadRadius: 1,
                                        offset: Offset(0, 4))
                                  ]),
                              alignment: Alignment.center,
                              child: Container(
                                height: _height * 0.08,
                                width: _width * 0.160,
                                decoration: BoxDecoration(
                                  color: cartBoxColor,
                                  borderRadius:
                                      BorderRadius.circular(_width * 0.02),
                                  image: const DecorationImage(
                                    image: AssetImage(ImageUtils.smallBag),
                                    alignment: Alignment.center,
                                    fit: BoxFit.contain,
                                    // ),
                                  ),
                                ),
                              )),
                          SizedBox(
                            width: _width * 0.04,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: _height * 0.01,
                                      ),
                                      TextWidget(
                                        textTitle: 'Women Shoulder Handbag',
                                        color: Colors.black,
                                        fontSize: _height * 0.0125,
                                        fontFamily: poppinsSemiBold,
                                      ),
                                      CustomRichText(
                                        textSpan1: 'Order ID:',
                                        color1: Colors.grey,
                                        fontWeight1: FontWeight.bold,
                                        fontSize1: _height * 0.0125,
                                        fontFamily1: poppinsMedium,
                                        textSpan2: ' 85858-2252525',
                                        color2: homeBoxColor,
                                        fontWeight2: FontWeight.normal,
                                        fontSize2: _height * 0.0125,
                                        fontFamily2: poppinsMedium,
                                      ),
                                      CustomRichText(
                                        textSpan1: 'Date/Time:',
                                        color1: Colors.grey,
                                        fontWeight1: FontWeight.bold,
                                        fontSize1: _height * 0.0125,
                                        fontFamily1: poppinsMedium,
                                        textSpan2: ' 4/7/2023 10:00 am',
                                        color2: Colors.black,
                                        fontWeight2: FontWeight.normal,
                                        fontSize2: _height * 0.0125,
                                        fontFamily2: poppinsMedium,
                                      ),
                                      CustomRichText(
                                        textSpan1: 'Quantity:',
                                        color1: Colors.grey,
                                        fontWeight1: FontWeight.bold,
                                        fontSize1: _height * 0.0125,
                                        fontFamily1: poppinsMedium,
                                        textSpan2: ' 01',
                                        color2: homeBoxColor,
                                        fontWeight2: FontWeight.normal,
                                        fontSize2: _height * 0.0125,
                                        fontFamily2: poppinsMedium,
                                      ),
                                      CustomRichText(
                                        textSpan1: 'Total Amount:',
                                        color1: Colors.grey,
                                        fontWeight1: FontWeight.bold,
                                        fontSize1: _height * 0.0125,
                                        fontFamily1: poppinsMedium,
                                        textSpan2: ' US \$4.00',
                                        color2: Colors.black,
                                        fontWeight2: FontWeight.normal,
                                        fontSize2: _height * 0.0125,
                                        fontFamily2: poppinsMedium,
                                      ),
                                    ],
                                  ),
                                ),

                                // Expanded(
                                //   flex: 1,
                                //   child: Column(
                                //     children: [
                                //       TextWidget(
                                //         textTitle: 'Delivered',
                                //         color: Colors.green,
                                //         fontSize: _height * 0.009,
                                //         fontFamily: poppinsSemiBold,
                                //       ),
                                //       // SizedBox(height: Get.height * 0.05,),
                                //       IconButton(
                                //           onPressed: (){},
                                //           icon: Image.asset(ImageUtils.deleteIcon)
                                //       )
                                //     ],
                                //   ),
                                // )

                                Expanded(
                                  flex: 1,
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                              children: [
                                            Column(
                                              children: [
                                                Container(
                                                  color: Colors.green,
                                                  height: 20,
                                                ),

                                              ], // top widgets
                                            ),
                                            const Spacer(),
                                            Container(
                                              color: Colors.brown,
                                              height: 20,
                                            ) // bottom widget
                                          ]),
                                        ),
                                      ]),
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
                          )
                        ]));
              },
            ),
            SizedBox(
              height: _height * 0.03,
            ),
          ]),
        ),
      ),
    );
  }
}
