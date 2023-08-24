import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import 'package:moyen_xpress_app/view/cart/order_confirmation.dart';

import '../../components/custom_dialog.dart';
import '../../components/custom_richtext.dart';
import '../../components/test_class.dart';
import '../../utils/font_utils.dart';


// class MyCart extends GetView<MyCartController> {
//   // MyCart({super.key,
//   // });
//
//   final MyCartController controller = MyCartController();
//   bool willPop = true;
//
//   @override
//   Widget build(BuildContext context) {
//     double _height = MediaQuery
//         .of(context)
//         .size
//         .height;
//     double _width = MediaQuery
//         .of(context)
//         .size
//         .width;
//     // controller.globalContext = context;
//     return WillPopScope(
//       onWillPop: () async {
//         return willPop;
//       },
//       child: SafeArea(
//           top: false,
//           bottom: false,
//           child: Scaffold(
//             backgroundColor: Colors.white,
//             appBar: CustomAppbar1(
//               heading: 'My Cart',
//             ),
//             body:
//             controller.select == 0 ?
//             Column(
//                 children: [
//                   SingleChildScrollView(
//                     physics: const NeverScrollableScrollPhysics(),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         SizedBox(height: _height * 0.03,),
//                         Row(
//                           children: [
//                             IconButton(
//                                 padding: EdgeInsets.only(left: _width * 0.025),
//                                 constraints: const BoxConstraints(),
//                                 onPressed: () {
//                                   Get.back();
//                                 },
//                                 icon: Icon(
//                                   Icons.arrow_back_ios,
//                                   size: _height * 0.025,
//                                 )
//                             ),
//                             Expanded(child:
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 TextWidget(
//                                   textTitle: 'My Cart',
//                                   fontWeight: FontWeight.w700,
//                                   fontSize: _height * 0.025,
//                                 ),
//                               ],
//                             )
//                             )
//                           ],
//                         ),
//                         SizedBox(height: _height * 0.02,),
//                         Container(
//                           color: Colors.red,
//                           height: _height * 0.4,
//                           child: ListView.builder(
//                             physics: const ScrollPhysics(),
//                             shrinkWrap: true,
//                             scrollDirection: Axis.vertical,
//                             padding: EdgeInsets.zero,
//                             itemCount: 8,
//                             itemBuilder: (context, index) {
//                               return Container(
//                                 margin: EdgeInsets.symmetric(
//                                     vertical: _height * 0.01),
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: _width * 0.04,
//                                   vertical: _height * 0.01,
//                                 ),
//                                 color: Colors.white,
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   // crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                         height: _height * 0.095,
//                                         width: _width * 0.2,
//                                         decoration: BoxDecoration(
//                                             color: cartBoxColor,
//                                             borderRadius: BorderRadius.circular(
//                                                 _width * 0.02),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                   color: Colors.grey
//                                                       .withOpacity(0.4),
//                                                   blurRadius: 1,
//                                                   spreadRadius: 1,
//                                                   offset: Offset(0, 4)
//                                               )
//                                             ]
//                                         ),
//                                         alignment: Alignment.center,
//                                         child:
//                                         Container(
//                                           height: _height * 0.08,
//                                           width: _width * 0.160,
//                                           decoration: BoxDecoration(
//                                             color: cartBoxColor,
//                                             borderRadius: BorderRadius.circular(
//                                                 _width * 0.02),
//                                             image: const DecorationImage(
//                                               image: AssetImage(
//                                                   ImageUtils.smallBag
//                                               ),
//                                               alignment: Alignment.center,
//                                               fit: BoxFit.contain,
//                                               // ),
//                                             ),
//                                           ),
//                                         )
//                                     ),
//                                     SizedBox(width: _width * 0.04,),
//                                     Expanded(
//                                       child: Column(
//                                         // mainAxisAlignment: MainAxisAlignment.start,
//                                         crossAxisAlignment: CrossAxisAlignment
//                                             .start,
//                                         children: [
//                                           SizedBox(height: _height * 0.01,),
//                                           TextWidget(
//                                             textTitle: 'Women Shoulder Handbag',
//                                             color: Colors.black,
//                                             fontSize: _height * 0.0125,
//                                             fontFamily: poppinsRegular,
//                                           ),
//                                           CustomRichText(
//                                             textSpan1: '\$37.39',
//                                             color1: Colors.black,
//                                             fontWeight1: FontWeight.bold,
//                                             fontSize1: _height * 0.0125,
//                                             fontFamily1: poppinsSemiBold,
//                                             textSpan2: ' /Pieces',
//                                             color2: Colors.black,
//                                             fontWeight2: FontWeight.normal,
//                                             fontSize2: _height * 0.01,
//                                             fontFamily2: poppinsRegular,
//                                           ),
//                                           SizedBox(height: _height * 0.02,),
//                                           Row(
//                                             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                               children: [
//                                                 Container(
//                                                     height: _height * 0.03,
//                                                     width: _width * 0.25,
//                                                     padding: EdgeInsets
//                                                         .symmetric(
//                                                       // horizontal: _width * 0.02,
//                                                         vertical: _height *
//                                                             0.005
//                                                     ),
//                                                     decoration: BoxDecoration(
//                                                       color: cartBoxColor,
//                                                       borderRadius: BorderRadius
//                                                           .circular(
//                                                           _width * 0.015),
//                                                       // boxShadow: [
//                                                       //   BoxShadow(
//                                                       //       color: Colors.grey.withOpacity(0.4),
//                                                       //       blurRadius: 1,
//                                                       //       spreadRadius: 1,
//                                                       //       offset: Offset(0, 4)
//                                                       //   )
//                                                       // ]
//                                                     ),
//                                                     child: Row(
//                                                       mainAxisAlignment: MainAxisAlignment
//                                                           .spaceBetween,
//                                                       children: [
//                                                         Container(
//                                                           height: _height *
//                                                               0.055,
//                                                           width: _width * 0.1,
//                                                           decoration: BoxDecoration(
//                                                             color: cartBoxColor,
//                                                             shape: BoxShape
//                                                                 .circle,
//                                                             border: Border.all(
//                                                                 color: Colors
//                                                                     .black,
//                                                                 width: 1
//                                                             ),
//                                                           ),
//                                                           child: Center(
//                                                             child: Icon(
//                                                               Icons.remove,
//                                                               color: Colors
//                                                                   .black,
//                                                               size: _height *
//                                                                   0.02,
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         TextWidget(
//                                                           textTitle: '01',
//                                                           color: Colors.black,
//                                                           fontSize: _height *
//                                                               0.015,
//                                                           fontFamily: poppinsSemiBold,
//                                                         ),
//                                                         Container(
//                                                           height: _height *
//                                                               0.055,
//                                                           width: _width * 0.1,
//                                                           decoration: BoxDecoration(
//                                                             color: cartBoxColor,
//                                                             shape: BoxShape
//                                                                 .circle,
//                                                             border: Border.all(
//                                                                 color: homeBoxColor,
//                                                                 width: 1
//                                                             ),
//                                                           ),
//                                                           child: Center(
//                                                             child: Icon(
//                                                               Icons.add,
//                                                               color: homeBoxColor,
//                                                               size: _height *
//                                                                   0.02,
//                                                             ),
//                                                           ),
//                                                         )
//                                                       ],
//                                                     )
//                                                 ),
//                                                 Expanded(
//                                                   child: Icon(
//                                                     Icons.delete,
//                                                     size: _height * 0.01,
//                                                   ),
//                                                 )
//                                               ])
//                                         ],
//                                       ),
//                                     ),
//                                     // SizedBox(width: _width * 0.04,),
//                                     // Expanded(
//                                     //   child: Column(
//                                     //     crossAxisAlignment: CrossAxisAlignment.end,
//                                     //     mainAxisAlignment: MainAxisAlignment.end,
//                                     //     children: [
//                                     //       Icon(
//                                     //         Icons.delete,
//                                     //         size: _height * 0.01,
//                                     //       )
//                                     //     ],
//                                     //   ),
//                                     // )
//                                   ],
//                                 ),
//                               );
//                             },
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ]) :
//             Column(
//               children: [
//                 SingleChildScrollView(
//                   physics: const NeverScrollableScrollPhysics(),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                   Container(
//                     color: Colors.white,
//                     height: _height * 0.75,
//                     child: ListView.builder(
//                       physics: const ScrollPhysics(),
//                       shrinkWrap: true,
//                       scrollDirection: Axis.vertical,
//                       padding: EdgeInsets.zero,
//                       itemCount: 20,
//                       itemBuilder: (context, index) {
//                         return Stack(
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.symmetric(
//                                     vertical: _height * 0.01),
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: _width * 0.04,
//                                   vertical: _height * 0.01,
//                                 ),
//                                 color: Colors.white,
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   // crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                         height: _height * 0.095,
//                                         width: _width * 0.2,
//                                         decoration: BoxDecoration(
//                                             color: cartBoxColor,
//                                             borderRadius: BorderRadius.circular(
//                                                 _width * 0.02),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                   color: Colors.grey
//                                                       .withOpacity(0.4),
//                                                   blurRadius: 1,
//                                                   spreadRadius: 1,
//                                                   offset: Offset(0, 4)
//                                               )
//                                             ]
//                                         ),
//                                         alignment: Alignment.center,
//                                         child:
//                                         Container(
//                                           height: _height * 0.08,
//                                           width: _width * 0.160,
//                                           decoration: BoxDecoration(
//                                             color: cartBoxColor,
//                                             borderRadius: BorderRadius.circular(
//                                                 _width * 0.02),
//                                             image: const DecorationImage(
//                                               image: AssetImage(
//                                                   ImageUtils.smallBag
//                                               ),
//                                               alignment: Alignment.center,
//                                               fit: BoxFit.contain,
//                                               // ),
//                                             ),
//                                           ),
//                                         )
//                                     ),
//                                     SizedBox(width: _width * 0.04,),
//                                     // Expanded(
//                                     //   child: Row(
//                                     //     mainAxisAlignment: MainAxisAlignment.start,
//                                     //     children:[
//                                     //       Column(
//                                     //         crossAxisAlignment: CrossAxisAlignment.start,
//                                     //       children: [
//                                     //         TextWidget(
//                                     //           textTitle: 'Women Shoulder Handbag',
//                                     //           color: Colors.black,
//                                     //           fontSize: _height * 0.0125,
//                                     //           fontFamily: poppinsRegular,
//                                     //         ),
//                                     //         CustomRichText(
//                                     //           textSpan1: '\$37.39',
//                                     //           color1: Colors.black,
//                                     //           fontWeight1: FontWeight.bold,
//                                     //           fontSize1: _height * 0.0125,
//                                     //           fontFamily1: poppinsSemiBold,
//                                     //           textSpan2: ' /Pieces',
//                                     //           color2: Colors.black,
//                                     //           fontWeight2: FontWeight.normal,
//                                     //           fontSize2: _height * 0.01,
//                                     //           fontFamily2: poppinsRegular,
//                                     //         ),
//                                     //         SizedBox(height: _height * 0.02,),
//                                     //
//                                     //       ],
//                                     //     ),
//                                     //   ]),
//                                     // ),
//                                     Column(
//                                         crossAxisAlignment: CrossAxisAlignment
//                                             .start,
//                                         children: [
//                                           TextWidget(
//                                             textTitle: 'Car',
//                                             color: Colors.black,
//                                             fontSize: _height * 0.0175,
//                                             fontFamily: poppinsMedium,
//                                           ),
//                                           TextWidget(
//                                             textTitle: '\$37.69',
//                                             color: Colors.black,
//                                             fontSize: _height * 0.0175,
//                                             fontFamily: poppinsMedium,
//                                           ),
//
//                                         ]),
//
//
//                                   ],
//                                 ),
//                               ),
//                                 Positioned(
//                                     left: sizeW(375),
//                                     top: sizeH(50),
//                                     child: IconButton(
//                                         padding: EdgeInsets.zero,
//                                         constraints: const BoxConstraints(),
//                                         onPressed: () {},
//                                         icon: Image.asset(
//                                             ImageUtils.deleteIcon
//                                         )
//                                     )
//                                 ),
//                             ]);
//                       },
//                     ),
//                   ),
//                   SizedBox(height: _height * 0.02,),
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: sizeW(10)
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         TextWidget(
//                           textTitle: 'Subtotal',
//                           color: Colors.black,
//                           fontWeight: FontWeight.w700,
//                           fontSize: _height * 0.0175,
//                         ),
//                         TextWidget(
//                           textTitle: '\$110',
//                           color: Colors.black,
//                           fontWeight: FontWeight.w700,
//                           fontSize: _height * 0.0175,
//                         ),
//                       ],
//                     ),
//                   ),
//
//                   SizedBox(height: _height * 0.025,),
//                   CustomButton(
//                     isSelected: false,
//                     onTap: () {
//                       Get.to(OrderConfirmation(select: 0,));
//                     },
//                     margin: EdgeInsets.symmetric(
//                       horizontal: sizeW(10)
//                     ),
//                     width: double.infinity,
//                     padding: EdgeInsets.symmetric(
//                       // horizontal: _width * 0.05,
//                         vertical: _height * 0.015
//                     ),
//                     title: 'Next',
//                     color: buyNow,
//                     textColor: Colors.white,
//                     fontSize: _height * 0.0175,
//                     fontFamily: poppinsRegular,
//                     borderRadius: _width * 0.012,
//                   ),
//               ],
//             ),
//           ),
//           ]),
//     ),)
//
//     );
//   }
// }

class MyCart extends StatelessWidget {
  int? select = 0;
   MyCart({Key? key,
   this.select
   }) : super(key: key);

  bool willPop = true;
  final MyCartController controller = MyCartController();

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery
        .of(context)
        .size
        .height;
    double _width = MediaQuery
        .of(context)
        .size
        .width;
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
              heading: 'My Cart',
            ),
            body:
            select == 0 ?
            Column(
                children: [
                  SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          color: Colors.white,
                          height: _height * 0.75,
                          child: ListView.builder(
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            padding: EdgeInsets.zero,
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return Stack(
                                  children:[
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
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

                                                      Material(
                                                        child: InkWell(
                                                          onTap: ()async{
                                                            Get.dialog(
                                                                const Center(
                                                                    child: CircularProgressIndicator(
                                                                      color: homeBoxColor,
                                                                    )
                                                                ));
                                                            await Future.delayed(const Duration(seconds: 1));
                                                            Get.back();
                                                            Get.dialog(
                                                                CustomDialogSimple(
                                                                    title: 'Done',
                                                                    description: 'item has been deleted successfully',
                                                                    okTap: true)
                                                            );
                                                          },
                                                          child: Image.asset(
                                                              ImageUtils.deleteIcon
                                                          ),
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

                                    /// Delete Icon With Positioned
                                    // Positioned(
                                    //     left: sizeW(350),
                                    //     top: sizeH(75),
                                    //     child: Material(
                                    //       child: InkWell(
                                    //         onTap: (){},
                                    //         child: Image.asset(
                                    //             ImageUtils.deleteIcon
                                    //         ),
                                    //       ),
                                    //     )
                                    // ),

                                  ]);
                            },
                          ),
                        ),

                        SizedBox(height: _height * 0.02,),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: sizeW(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                textTitle: 'Subtotal',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: _height * 0.0175,
                              ),
                              TextWidget(
                                textTitle: '\$110',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: _height * 0.0175,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: _height * 0.025,),
                        CustomButton(
                          isSelected: false,
                          onTap: ()async{
                            Get.dialog(
                                const Center(
                                    child: CircularProgressIndicator(
                                      color: homeBoxColor,
                                    )
                                ));
                            await Future.delayed(const Duration(seconds: 1));
                            Get.back();
                            Get.to(OrderConfirmation(select: 0,));
                          },
                          margin: EdgeInsets.symmetric(
                              horizontal: sizeW(20)
                          ),
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            // horizontal: _width * 0.05,
                              vertical: _height * 0.015
                          ),
                          title: 'Next',
                          color: buyNow,
                          textColor: Colors.white,
                          fontSize: _height * 0.0175,
                          fontFamily: poppinsRegular,
                          borderRadius: _width * 0.012,
                        ),
                      ],
                    ),
                  ),
                ]) :
            Column(
                children: [
                  SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          color: Colors.white,
                          height: _height * 0.75,
                          child: ListView.builder(
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            padding: EdgeInsets.zero,
                            itemCount: 20,
                            itemBuilder: (context, index) {
                              return Stack(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: _height * 0.01),
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
                                                  borderRadius: BorderRadius.circular(
                                                      _width * 0.02),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.4),
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
                                                  borderRadius: BorderRadius.circular(
                                                      _width * 0.02),
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
                                          // Expanded(
                                          //   child: Row(
                                          //     mainAxisAlignment: MainAxisAlignment.start,
                                          //     children:[
                                          //       Column(
                                          //         crossAxisAlignment: CrossAxisAlignment.start,
                                          //       children: [
                                          //         TextWidget(
                                          //           textTitle: 'Women Shoulder Handbag',
                                          //           color: Colors.black,
                                          //           fontSize: _height * 0.0125,
                                          //           fontFamily: poppinsRegular,
                                          //         ),
                                          //         CustomRichText(
                                          //           textSpan1: '\$37.39',
                                          //           color1: Colors.black,
                                          //           fontWeight1: FontWeight.bold,
                                          //           fontSize1: _height * 0.0125,
                                          //           fontFamily1: poppinsSemiBold,
                                          //           textSpan2: ' /Pieces',
                                          //           color2: Colors.black,
                                          //           fontWeight2: FontWeight.normal,
                                          //           fontSize2: _height * 0.01,
                                          //           fontFamily2: poppinsRegular,
                                          //         ),
                                          //         SizedBox(height: _height * 0.02,),
                                          //
                                          //       ],
                                          //     ),
                                          //   ]),
                                          // ),
                                          Expanded(
                                            child:
                                            Column(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  TextWidget(
                                                    textTitle: 'Car',
                                                    color: Colors.black,
                                                    fontSize: _height * 0.0175,
                                                    fontFamily: poppinsMedium,
                                                  ),

                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children:[
                                                      TextWidget(
                                                      textTitle: '\$37.69',
                                                      color: Colors.black,
                                                      fontSize: _height * 0.0175,
                                                      fontFamily: poppinsMedium,
                                                    ),

                                                      Material(
                                                        child: InkWell(
                                                          onTap: ()async{
                                                            Get.dialog(
                                                                const Center(
                                                                    child: CircularProgressIndicator(
                                                                      color: homeBoxColor,
                                                                    )
                                                                ));
                                                            await Future.delayed(const Duration(seconds: 1));
                                                            Get.back();
                                                            Get.dialog(
                                                                CustomDialogSimple(
                                                                    title: 'Done',
                                                                    description: 'item has been deleted successfully',
                                                                    okTap: true)
                                                            );
                                                          },
                                                          child: Image.asset(
                                                              ImageUtils.deleteIcon
                                                          ),
                                                        ),
                                                      )
                                                      // ),
                                                 ] ),

                                                ]),
                                          ),


                                        ],
                                      ),
                                    ),

                                    // Positioned(
                                    //     left: sizeW(375),
                                    //     top: sizeH(50),
                                    //     child: IconButton(
                                    //         padding: EdgeInsets.zero,
                                    //         constraints: const BoxConstraints(),
                                    //         onPressed: () {},
                                    //         icon: Image.asset(
                                    //             ImageUtils.deleteIcon
                                    //         )
                                    //     )
                                    // ),

                                  ]);
                            },
                          ),
                        ),
                        SizedBox(height: _height * 0.02,),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: sizeW(10)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                textTitle: 'Subtotal',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: _height * 0.0175,
                              ),
                              TextWidget(
                                textTitle: '\$110',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: _height * 0.0175,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: _height * 0.025,),
                        CustomButton(
                          isSelected: false,
                          onTap: ()async{
                            Get.dialog(
                                const Center(
                                    child: CircularProgressIndicator(
                                      color: homeBoxColor,
                                    )
                                ));
                            await Future.delayed(const Duration(seconds: 1));
                            Get.back();
                            Get.to(OrderConfirmation(select: 0,));
                          },
                          margin: EdgeInsets.symmetric(
                              horizontal: sizeW(10)
                          ),
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            // horizontal: _width * 0.05,
                              vertical: _height * 0.015
                          ),
                          title: 'Next',
                          color: buyNow,
                          textColor: Colors.white,
                          fontSize: _height * 0.0175,
                          fontFamily: poppinsRegular,
                          borderRadius: _width * 0.012,
                        ),
                      ],
                    ),
                  ),
                ]),
          ),)

    );
  }
}





