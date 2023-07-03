import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';

import '../../components/custom_richtext.dart';
import '../../utils/font_utils.dart';


class OrderConfirmation extends GetView<MyCartController> {
  OrderConfirmation({super.key,
  });

  bool willPop = true;
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
          body: Column(
              children:[
                SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: _height * 0.03,),
                      Row(
                        children: [
                          IconButton(
                              padding: EdgeInsets.only(left: _width * 0.025),
                              constraints: const BoxConstraints(),
                              onPressed: (){
                                Get.back();
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: _height * 0.025,
                              )
                          ),
                          Expanded(child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidget(
                                textTitle: 'Order Confirmation',
                                fontWeight: FontWeight.w700,
                                fontSize: _height * 0.025,
                              ),
                            ],
                          )
                          )
                        ],
                      ),
                      SizedBox(height: _height * 0.01,),
                      Padding(padding: EdgeInsets.symmetric(
                        horizontal: _width * 0.04,
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextWidget(
                              textTitle: 'Seller Store',
                              fontWeight: FontWeight.w700,
                              fontSize: _height * 0.02,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: _height * 0,),
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: _height * 0),
                        padding: EdgeInsets.symmetric(
                          horizontal: _width * 0.04,
                          vertical: _height * 0.01,
                        ),
                        color: Colors.white,
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
                                    fontFamily: poppinsRegular,
                                  ),
                                  CustomRichText(
                                    textSpan1: '\$37.39',
                                    color1: Colors.black,
                                    fontWeight1: FontWeight.bold,
                                    fontSize1: _height * 0.0125,
                                    fontFamily1: poppinsSemiBold,
                                    textSpan2: ' /Pieces',
                                    color2: Colors.black,
                                    fontWeight2: FontWeight.normal,
                                    fontSize2: _height * 0.01,
                                    fontFamily2: poppinsRegular,
                                  ),
                                  SizedBox(height: _height * 0.02,),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:[
                                        Container(
                                            height: _height * 0.03,
                                            width: _width * 0.25,
                                            padding: EdgeInsets.symmetric(
                                              // horizontal: _width * 0.02,
                                                vertical: _height * 0.005
                                            ),
                                            decoration: BoxDecoration(
                                              color: cartBoxColor,
                                              borderRadius: BorderRadius.circular(_width * 0.015),
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
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  height: _height * 0.055,
                                                  width: _width * 0.1,
                                                  decoration: BoxDecoration(
                                                    color: cartBoxColor,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width: 1
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: Colors.black,
                                                      size: _height * 0.02,
                                                    ),
                                                  ),
                                                ),
                                                TextWidget(
                                                  textTitle: '01',
                                                  color: Colors.black,
                                                  fontSize: _height * 0.015,
                                                  fontFamily: poppinsSemiBold,
                                                ),
                                                Container(
                                                  height: _height * 0.055,
                                                  width: _width * 0.1,
                                                  decoration: BoxDecoration(
                                                    color: cartBoxColor,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: homeBoxColor,
                                                        width: 1
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.add,
                                                      color: homeBoxColor,
                                                      size: _height * 0.02,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                        ),
                                        Expanded(
                                          child: Icon(
                                            Icons.delete,
                                            size: _height * 0.01,
                                          ),
                                        )
                                      ])
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
                      SizedBox(height: _height * 0.005,),
                      Padding(padding: EdgeInsets.symmetric(
                        horizontal: _width * 0.04,
                      ),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(
                        horizontal: _width * 0.06,
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextWidget(
                              textTitle: 'John Smith',
                              fontWeight: FontWeight.w700,
                              fontSize: _height * 0.0175,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: _height * 0.005,),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: _width * 0.04
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: _width * 0.02,
                          vertical: _height * 0.01
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(_width * 0.02),
                          border: Border.all(
                            color: Colors.black54
                          )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: CustomRichText(
                                textSpan1: 'Address: ',
                                fontFamily1: poppinsRegular,
                                fontSize1: _height *0.012,
                                color1: Colors.black54,
                                textSpan2: 'UK',
                                fontFamily2: poppinsSemiBold,
                                fontSize2: _height *0.012,
                                color2: Colors.black54,
                              )
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: CustomRichText(
                                  textSpan1: 'Postal Code: ',
                                  fontFamily1: poppinsRegular,
                                  fontSize1: _height *0.012,
                                  color1: Colors.black54,
                                  textSpan2: '123456',
                                  fontFamily2: poppinsSemiBold,
                                  fontSize2: _height *0.012,
                                  color2: Colors.black54,
                                )
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: CustomRichText(
                                  textSpan1: 'City: ',
                                  fontFamily1: poppinsRegular,
                                  fontSize1: _height *0.012,
                                  color1: Colors.black54,
                                  textSpan2: 'Seattle',
                                  fontFamily2: poppinsSemiBold,
                                  fontSize2: _height *0.012,
                                  color2: Colors.black54,
                                )
                            ),Align(
                                alignment: Alignment.topLeft,
                                child: CustomRichText(
                                  textSpan1: 'State: ',
                                  fontFamily1: poppinsRegular,
                                  fontSize1: _height *0.012,
                                  color1: Colors.black54,
                                  textSpan2: 'Seattle',
                                  fontFamily2: poppinsSemiBold,
                                  fontSize2: _height *0.012,
                                  color2: Colors.black54,
                                )
                            ),Align(
                                alignment: Alignment.topLeft,
                                child: CustomRichText(
                                  textSpan1: 'Country: ',
                                  fontFamily1: poppinsRegular,
                                  fontSize1: _height *0.012,
                                  color1: Colors.black54,
                                  textSpan2: 'USA',
                                  fontFamily2: poppinsSemiBold,
                                  fontSize2: _height *0.012,
                                  color2: Colors.black54,
                                )
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomRichText(
                                  textSpan1: 'Phone: ',
                                  fontFamily1: poppinsRegular,
                                  fontSize1: _height *0.012,
                                  color1: Colors.black54,
                                  textSpan2: '2525252525',
                                  fontFamily2: poppinsSemiBold,
                                  fontSize2: _height *0.012,
                                  color2: Colors.black54,
                                ),
                                Icon(
                                  Icons.edit,
                                  size: _height * 0.02,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: _height * 0.02,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: _width * 0.04
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                                ImageUtils.cashIcon,
                                height: _height *0.02
                            ),
                            SizedBox(width: _width * 0.02,),
                            TextWidget(
                              textTitle: 'Select Payment Method',
                              fontWeight: FontWeight.w700,
                              fontSize: _height * 0.0175,
                              decoration: TextDecoration.underline,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: _height *0.01,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                        horizontal: _width *0.04
                      ),
                        child: Row(
                          children: [
                            Image.asset(
                                ImageUtils.cashIcon,
                                height: _height *0.02
                            ),
                            SizedBox(width: _width*0.02,),
                            Expanded(child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextWidget(
                                  textTitle: 'Express Delivery',
                                  fontWeight: FontWeight.w700,
                                  fontSize: _height * 0.0175,
                                  //decoration: TextDecoration.underline,
                                ),
                                TextWidget(
                                  textTitle: '\$1.00',
                                  fontWeight: FontWeight.w700,
                                  fontSize: _height * 0.015,
                                  //decoration: TextDecoration.underline,
                                ),
                                Radio(
                                    value: "radio value",
                                    groupValue: "group value",
                                    onChanged: (value){
                                      print(value); //selected value
                                    }
                                )
                              ],
                            ))
                          ],
                        ),
                      ),

                      //SizedBox(height: _height *0.001,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: _width *0.04
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                                ImageUtils.cashIcon,
                                height: _height *0.02
                            ),
                            SizedBox(width: _width*0.02,),
                            Expanded(child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextWidget(
                                  textTitle: 'Express Delivery',
                                  fontWeight: FontWeight.w700,
                                  fontSize: _height * 0.0175,
                                  //decoration: TextDecoration.underline,
                                ),
                                TextWidget(
                                  textTitle: '\$1.00',
                                  fontWeight: FontWeight.w700,
                                  fontSize: _height * 0.015,
                                  //decoration: TextDecoration.underline,
                                ),
                                Radio(
                                    value: "radio value",
                                    groupValue: "group value",
                                    onChanged: (value){
                                      print(value); //selected value
                                    }
                                )
                              ],
                            ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: _width*0.04
                        ),
                        child: const Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(height: _height * 0.01,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: _width*0.04
                        ),
                        child: Column(
                          children:[
                            Row(
                            children: [
                              TextWidget(
                              textTitle: 'Summary',
                              fontWeight: FontWeight.w700,
                              fontSize: _height * 0.0175,
                              //decoration: TextDecoration.underline,
                            ),
                          ]
                          ),
                            SizedBox(height: _height*0.01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextWidget(
                                    textTitle: 'Total item cost',
                                    fontFamily: poppinsMedium,
                                    fontSize: _height * 0.015,
                                    //decoration: TextDecoration.underline,
                                  ),
                                  TextWidget(
                                    textTitle: '\$37.69',
                                    fontFamily: poppinsSemiBold,
                                    fontSize: _height * 0.015,
                                    //decoration: TextDecoration.underline,
                                  ),
                                ]
                            ),

                            SizedBox(height: _height*0.01,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextWidget(
                                    textTitle: 'Discount cost',
                                    fontFamily: poppinsMedium,
                                    fontSize: _height * 0.015,
                                    //decoration: TextDecoration.underline,
                                  ),
                                  TextWidget(
                                    textTitle: '\$30.69',
                                    fontFamily: poppinsSemiBold,
                                    fontSize: _height * 0.015,
                                    //decoration: TextDecoration.underline,
                                  ),
                                ]
                            ),

                            SizedBox(height: _height*0.01,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextWidget(
                                    textTitle: 'Tax',
                                    fontFamily: poppinsMedium,
                                    fontSize: _height * 0.015,
                                    //decoration: TextDecoration.underline,
                                  ),
                                  TextWidget(
                                    textTitle: '\$1.00',
                                    fontFamily: poppinsSemiBold,
                                    fontSize: _height * 0.015,
                                    //decoration: TextDecoration.underline,
                                  ),
                                ]
                            ),

                            SizedBox(height: _height*0.01,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextWidget(
                                    textTitle: 'Shipping cost',
                                    fontFamily: poppinsMedium,
                                    fontSize: _height * 0.015,
                                    //decoration: TextDecoration.underline,
                                  ),
                                  TextWidget(
                                    textTitle: '\$1.00',
                                    fontFamily: poppinsSemiBold,
                                    fontSize: _height * 0.015,
                                    //decoration: TextDecoration.underline,
                                  ),
                                ]
                            ),
                        ]),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: _width*0.04
                        ),
                        child: const Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: _width*0.04
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                textTitle: 'Total',
                                fontFamily: poppinsSemiBold,
                                fontSize: _height * 0.0175,
                                //decoration: TextDecoration.underline,
                              ),
                              TextWidget(
                                textTitle: '\$39.69',
                                fontFamily: poppinsSemiBold,
                                fontSize: _height * 0.0175,
                                //decoration: TextDecoration.underline,
                              ),
                            ]
                        ),
                      ),
                      SizedBox(height: _height * 0.01,),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     CustomButton(
                      //       margin: EdgeInsets.symmetric(
                      //         horizontal: _width * 0.04
                      //       ),
                      //       width: _width * 1,
                      //       onTap: (){
                      //         Get.back();
                      //       },
                      //       padding: EdgeInsets.symmetric(
                      //         // horizontal: _width * 0.05,
                      //           vertical: _height * 0.0125
                      //       ),
                      //       title: 'Back To Shopping',
                      //       color: backToShopping,
                      //       textColor: Colors.white,
                      //       fontSize: _height * 0.0175,
                      //       fontFamily: poppinsRegular,
                      //       borderRadius: _width * 0.012,
                      //     ),
                      //
                      //   ],
                      // ),
                    ],
                  ),

                ),

              ]),
        ),
      ),
    );
  }
}

