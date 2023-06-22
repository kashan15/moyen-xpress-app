import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_richtext.dart';
import 'package:moyen_xpress_app/components/custom_textfield.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/product_details_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';

import '../../components/custom_textfield1.dart';

class ProductDetails extends GetView<ProductDetailsController> {
  int? a;
 ProductDetails({super.key,
   this.a
});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    controller.globalContext = context;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: _height * 0.05,),
            Padding(padding: EdgeInsets.symmetric(horizontal: _width * 0.04),
            child: Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: (){},
                    icon: Icon(Icons.arrow_back_ios,
                    size: _height * 0.025,
                    )
                ),
                SizedBox(width: _width * 0.06,),
                /// Search Textfield
                Container(
                  height: _height * 0.040,
                  width: _width * 0.6,
                  // padding: EdgeInsets.symmetric(
                  //   horizontal: _width * 0.0,
                  //   vertical: _height * 0.0,
                  // ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(_width * 0.01),
                    border: Border.all(
                      color: Colors.grey
                    ),
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.grey.withOpacity(0.5),
                      //       blurRadius: 1,
                      //       spreadRadius: 1,
                      //       offset: Offset(0, 3)
                      //   )
                      // ]
                  ),
                  child: CustomTextField1(
                    hintText: 'Search',
                    hintFontSize: _height * 0.015,
                    fontSize: _height * 0.015,
                    suffixIcon: Image.asset(ImageUtils.searchIcon),
                    controller: controller.searchController,
                    onChanged: (value) {
                      print(value);
                    },
                  )
                ),
                SizedBox(width: _width * 0.04,),
                IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: (){},
                    icon: Icon(Icons.share_outlined,
                      size: _height * 0.025,
                    )
                ),
                SizedBox(width: _width * 0.04,),
                IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: (){},
                    icon: Icon(Icons.shopping_cart_outlined,
                      size: _height * 0.025,
                    )
                ),
              ],
            ),
            ),
            SizedBox(height: _height * 0.05,),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: _width * 0.06),
                      padding: EdgeInsets.symmetric(horizontal: _width * 0.04, vertical: _height * 0.04),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(_width * 0.02)
                      ),
                      height: _height * 0.325,
                      width: double.infinity,
                    ),
                    Positioned(
                      top: _height * 0.01,
                      left: _width * 0.24,
                      child: Container(
                        height: _height * 0.225,
                        width: _width * 0.5,
                        decoration: const BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(image: AssetImage(
                                ImageUtils.bag
                            ),
                                fit: BoxFit.contain
                            )
                        ),
                      ),
                    ),
                    Positioned(
                        top: _height * 0.025,
                        left: _width * 0.8,
                        child: GestureDetector(
                          child: Image.asset(
                              ImageUtils.likeIcon
                          ),
                        )
                    ),
                    Positioned(
                        top: _height * 0.025,
                        left: _width * 0.865,
                        child: GestureDetector(
                          child: Image.asset(
                              ImageUtils.favIcon
                          ),
                        )
                    )
                  ],
                ),
                SizedBox(height: _height * 0.02,),
                TextWidget(
                  textTitle: 'Women Shoulder Handbag',
                  fontWeight: FontWeight.w700,
                  fontSize: _height * 0.025,
                ),
                SizedBox(height: _height * 0.01,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageUtils.starIcon,
                      height: _width * 0.08,
                      color: homeBoxColor,
                    ),
                    // SizedBox(width: _width * 0.00,),
                    TextWidget(
                      textTitle: '4.7/5 (40)',
                      fontWeight: FontWeight.w500,
                      fontSize: _height * 0.015,
                    ),
                    SizedBox(width: _width * 0.025,),
                    Image.asset(
                      ImageUtils.likeIcon,
                      height: _width * 0.05,
                    ),
                    SizedBox(width: _width * 0.01,),
                    TextWidget(
                      textTitle: '65',
                      fontWeight: FontWeight.w500,
                      fontSize: _height * 0.015,
                    ),
                    SizedBox(width: _width * 0.025,),
                    Image.asset(
                      ImageUtils.deliveryIcon,
                      height: _width * 0.07,
                    ),
                    // SizedBox(width: _width * 0.01,),
                    TextWidget(
                      textTitle: '7 Days',
                      fontWeight: FontWeight.w500,
                      fontSize: _height * 0.015,
                    ),
                  ],
                ),
                SizedBox(height: _height * 0.02,),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
                      padding: EdgeInsets.symmetric(horizontal: _width * 0.04, vertical: _height * 0.02),
                      width: double.infinity,
                      height: _height * 0.08,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_width * 0.02),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xffE66B12),
                            Color(0xffF3921F)
                          ],
                        ),
                      ),

                    ),
                    Positioned(
                      top: _height * 0.0175,
                      left: _width * 0.06,
                      child: CircleAvatar(
                        radius: _width * 0.05,
                        backgroundImage: AssetImage(ImageUtils.person1,),
                      ),
                    ),
                    Positioned(
                      top: _height * 0.0435,
                      left: _width * 0.15,
                      child: CircleAvatar(
                        radius: _width * 0.01,
                        backgroundColor: Colors.green,
                      ),
                    ),
                    Positioned(
                      top: _height * 0.025,
                      left: _width * 0.2,
                      child: TextWidget(
                        textTitle: 'John Smith',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: _height * 0.0175,
                      ),
                    ),
                    Positioned(
                      top: _height * 0.0485,
                      left: _width * 0.2,
                      child: Image.asset(
                        ImageUtils.starIcon,
                        height: _height * 0.0125,
                        // color: Colors.yellow,
                      ),
                    ),
                    Positioned(
                        top: _height * 0.0480,
                        left: _width * 0.235,
                        child:
                        CustomRichText(
                          textSpan1: '4.7/5',
                          color1: Colors.white,
                          fontWeight1: FontWeight.w700,
                          fontSize1: _height * 0.011,
                          fontFamily1: poppinsSemiBold,
                          textSpan2: ' (Reviews)',
                          color2: reviewColor,
                          fontWeight2: FontWeight.normal,
                          fontSize2: _height * 0.011,
                          fontFamily2: poppinsRegular,
                        )
                    ),
                    Positioned(
                        top: _height * 0.0175,
                        left: _width * 0.575,
                        child:
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: _width * 0.02,
                            vertical: _height * 0.0125,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(_width * 0.0125)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                ImageUtils.chatIcon,
                                height: _height * 0.02,
                              ),
                              SizedBox(width: _width * 0.02,),
                              TextWidget(
                                textTitle: 'Chat With Seller',
                                color: Colors.white,
                                fontSize: _height * 0.015,
                                fontFamily: poppinsRegular,
                              )
                            ],
                          ),
                        )
                    ),
                  ],
                ),



              ],
            ),
            TabBar(
              controller: controller.tabController,
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ],
            ),
            SizedBox(height: 20.0), // Adjust spacing as needed
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 200,
                  child: TabBarView(
                    controller: controller.tabController,
                    children: [
                      // Add your tab views here
                      Container(
                        height: _height * 0.05,
                          color: Colors.red),
                      Container(
                          height: _height * 0.05,
                          color: Colors.green),
                      Container(
                          height: _height * 0.05,
                          color: Colors.blue),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: _height * 0.02,),

            // SizedBox(height: _height * 0.25,),
            // Container(
            //   margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
            //   height: _height * 0.055 ,
            //   width: double.infinity,
            //   color: Colors.white,
            //   child: Row(
            //     children:[
            //       Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         TextWidget(
            //           textTitle: 'Discount Price:',
            //           color: Colors.black,
            //           fontSize: _height * 0.015,
            //           fontFamily: poppinsRegular,
            //         ),
            //
            //         CustomRichText(
            //           textSpan1: '\$37.39',
            //           color1: homeBoxColor,
            //           fontWeight1: FontWeight.bold,
            //           fontSize1: _height * 0.02,
            //           fontFamily1: poppinsSemiBold,
            //           textSpan2: ' /Pieces',
            //           color2: Colors.black,
            //           fontWeight2: FontWeight.normal,
            //           fontSize2: _height * 0.010,
            //           fontFamily2: poppinsRegular,
            //         )
            //       ],
            //     ),
            //       SizedBox(width: _width * 0.025,),
            //       GestureDetector(
            //         child: Container(
            //           margin: EdgeInsets.only(
            //             left: _width * 0.02,
            //             top: _height * 0.004,
            //             bottom: _height * 0.0055
            //           ),
            //           padding: EdgeInsets.symmetric(
            //             horizontal: _width * 0.07,
            //             // vertical: _height * 0.005,
            //           ),
            //           decoration: BoxDecoration(
            //             color: cartBox,
            //             borderRadius: BorderRadius.circular(_width * 0.015)
            //           ),
            //           child: const Center(
            //             child: Icon(
            //               Icons.shopping_cart_outlined,
            //               color: Colors.white,
            //             ),
            //           ),
            //         ),
            //       ),
            //       SizedBox(width: _width * 0.01,),
            //       GestureDetector(
            //         child: Container(
            //           margin: EdgeInsets.only(
            //               left: _width * 0.005,
            //               top: _height * 0.004,
            //               bottom: _height * 0.0055
            //           ),
            //           padding: EdgeInsets.symmetric(
            //             horizontal: _width * 0.140,
            //             // vertical: _height * 0.005,
            //           ),
            //           decoration: BoxDecoration(
            //               color: buyNow,
            //               borderRadius: BorderRadius.circular(_width * 0.015)
            //           ),
            //           child: Center(
            //             child: TextWidget(
            //               textTitle: 'Buy Now',
            //               color: Colors.white,
            //               fontSize: _height * 0.0155,
            //               fontFamily: poppinsRegular,
            //             )
            //           ),
            //         ),
            //       ),
            //   ]),
            // )

          ],
        ),
      ),
    );
  }
}
