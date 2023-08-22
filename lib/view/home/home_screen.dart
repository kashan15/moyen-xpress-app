import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:like_button/like_button.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/components/custom_dialog.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/rating_widget.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import 'package:moyen_xpress_app/view/products/product_details.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/custom_drawer.dart';
import '../../components/custom_navbar.dart';
import '../../controller/home_controller.dart';
import '../../utils/theme.dart';

class HomeScreen extends GetView<HomeController> {
  final String image1;
  final String? name;
  final double? price;
   HomeScreen({
     super.key,
     required this.image1,
     this.name,
     this.price
   });

   // dynamic pages = [];




    List categoriesList = [
    {
      "name": "New Arrivals",
      "image": ImageUtils.categoryImage1
    },{
      "name": "Man Fashion",
      "image": ImageUtils.categoryImage2
    },{
      "name": "Girl Fashion",
      "image": ImageUtils.categoryImage3
    },{
      "name": "Mobiles",
      "image": ImageUtils.categoryImage4
    },{
      "name": "New Arrivals",
      "image": ImageUtils.categoryImage1
    },{
      "name": "Man Fashion",
      "image": ImageUtils.categoryImage2
    },{
      "name": "Girl Fashion",
      "image": ImageUtils.categoryImage3
    },{
      "name": "Mobiles",
      "image": ImageUtils.categoryImage4
    },
  ];

  List shopNow1 = [
    {
      "image": ImageUtils.shopNow1,
      "categoryName": "Kids Toys",
      "textColor": Colors.white,
      "boxColor": Colors.white,
      "textColor1": Colors.blue
    },{
      "image": ImageUtils.shopNow2,
      "categoryName": "Cosmetics",
      "textColor": Colors.black,
      "boxColor": homeBoxColor,
      "textColor1": Colors.white
    },
    {
      "image": ImageUtils.shopNow1,
      "categoryName": "Kids Toys",
      "textColor": Colors.white,
      "boxColor": Colors.white,
      "textColor1": Colors.blue
    },{
      "image": ImageUtils.shopNow2,
      "categoryName": "Cosmetics",
      "textColor": Colors.black,
      "boxColor": homeBoxColor,
      "textColor1": Colors.white
    },{
      "image": ImageUtils.shopNow1,
      "categoryName": "Kids Toys",
      "textColor": Colors.white,
      "boxColor": Colors.white,
      "textColor1": Colors.blue
    },{
      "image": ImageUtils.shopNow2,
      "categoryName": "Cosmetics",
      "textColor": Colors.black,
      "boxColor": homeBoxColor,
      "textColor1": Colors.white
    },{
      "image": ImageUtils.shopNow1,
      "categoryName": "Kids Toys",
      "textColor": Colors.white,
      "boxColor": Colors.white,
      "textColor1": Colors.blue
    },{
      "image": ImageUtils.shopNow2,
      "categoryName": "Cosmetics",
      "textColor": Colors.black,
      "boxColor": homeBoxColor,
      "textColor1": Colors.white
    },{
      "image": ImageUtils.shopNow1,
      "categoryName": "Kids Toys",
      "textColor": Colors.white,
      "boxColor": Colors.white,
      "textColor1": Colors.blue
    },{
      "image": ImageUtils.shopNow2,
      "categoryName": "Cosmetics",
      "textColor": Colors.black,
      "boxColor": homeBoxColor,
      "textColor1": Colors.white
    },
  ];

   List shopNow2 = [
     {
       "image": ImageUtils.shopNow3,
       "categoryName": "Man Shoes",
       "boxColor": Colors.white,
       "textColor1": Colors.blue
     },
     {
       "image": ImageUtils.shopNow3,
       "categoryName": "Man Shoes",
       "boxColor": Colors.white,
       "textColor1": Colors.blue
     },{
       "image": ImageUtils.shopNow3,
       "categoryName": "Man Shoes",
       "boxColor": Colors.white,
       "textColor1": Colors.blue
     },{
       "image": ImageUtils.shopNow3,
       "categoryName": "Man Shoes",
       "boxColor": Colors.white,
       "textColor1": Colors.blue
     },{
       "image": ImageUtils.shopNow3,
       "categoryName": "Man Shoes",
       "boxColor": Colors.white,
       "textColor1": Colors.blue
     },{
       "image": ImageUtils.shopNow3,
       "categoryName": "Man Shoes",
       "boxColor": Colors.white,
       "textColor1": Colors.blue
     },{
       "image": ImageUtils.shopNow3,
       "categoryName": "Man Shoes",
       "boxColor": Colors.white,
       "textColor1": Colors.blue
     },{
       "image": ImageUtils.shopNow3,
       "categoryName": "Man Shoes",
       "boxColor": Colors.white,
       "textColor1": Colors.blue
     },{
       "image": ImageUtils.shopNow3,
       "categoryName": "Man Shoes",
       "boxColor": Colors.white,
       "textColor1": Colors.blue
     },{
       "image": ImageUtils.shopNow3,
       "categoryName": "Man Shoes",
       "boxColor": Colors.white,
       "textColor1": Colors.blue
     },

   ];
   // bool shouldPop = true;

  @override
  Widget build(BuildContext context) {
    controller.globalContext = context;
    var index;
    final controller1 = PageController(viewportFraction: 0.8, keepPage: true);
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;

    final pages = List.generate(
        6,
            (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.shade300,
          ),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Container(
            height: 280,
            child: Center(
                child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.indigo),
                )),
          ),
        ));
    return
              WillPopScope(
                onWillPop: ()async{
                  return false;
                },
                child: Scaffold(
                  // key: controller.scaffoldKey,
                  // //extendBodyBehindAppBar: true,
                  // appBar: CustomAppbar(
                  //   onMenuClicked: ()=> controller.scaffoldKey.currentState!.openEndDrawer(),
                  // ),
                  // endDrawer: const CustomDrawer(),
                  body: SingleChildScrollView(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: _height * 0.01,),
                          Container(
                            width: double.infinity,
                            height: _height * 0.22,
                            //color: Colors.yellow,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(image: AssetImage(
                                ImageUtils.homeBanner
                              ),
                              fit: BoxFit.fill
                              )
                            ),
                          ),
                          SizedBox(height: _height * 0.0125,),
                          Row(
                            children:[
                              SizedBox(width: _width * 0.04,),
                              TextWidget(
                              textTitle: 'Categories',
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                         ]),
                          SizedBox(height: _height * 0.0125,),

                          /// Previous Categories
                          SizedBox(
                            height: _height * 0.1525,
                            child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: categoriesList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                color: Colors.yellow,
                                // padding: EdgeInsets.all(1.w),
                                  child: Container(
                                    color: Colors.white,
                                    width: _width * 0.25,
                                    margin: EdgeInsets.zero,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 8
                                    ),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap:(){},
                                          child: Container(
                                            padding: EdgeInsets.zero,
                                            decoration:  BoxDecoration(
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  blurRadius: 1,
                                                  spreadRadius: 1,
                                                  offset: Offset(0, 3)
                                                )
                                              ]
                                            ),
                                            child: CircleAvatar(
                                              radius: _height * 0.045,
                                              backgroundColor: homeBoxColor,
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: _width * 0.02,
                                                    vertical: _height * 0.0075
                                                ),
                                                //padding: EdgeInsets.symmetric(horizontal: _width * 0.02, vertical: _height * 0.01),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(image: AssetImage(
                                                    categoriesList[index]["image"]
                                                  ),
                                                  fit: BoxFit.contain
                                                  )
                                                ),
                                              ),
                                            ),
                                          )
                                        ),
                                        SizedBox(height: Get.height * 0.01,),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: TextWidget(
                                            textTitle: categoriesList[index]["name"],
                                            fontFamily: poppinsRegular,
                                            fontSize: Get.height * 0.0125,
                                            color: Colors.black,
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            overFlow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ));
                            }),
                          ),

                             /// buildPageIndicator
                          //    const SizedBox(height: 20,),
                          // buildPageIndicator(),

                      //     Column(
                      //       mainAxisSize: MainAxisSize.min,
                      //       children: [
                      //         SizedBox(
                      //           height: _height * 0.140,
                      //           child: PageView.builder(
                      //             controller: controller.pageController,
                      //             scrollDirection: Axis.horizontal,
                      //             physics: NeverScrollableScrollPhysics(),
                      //             // itemCount: pages.length,
                      //             onPageChanged: (index) {
                      //               controller.currentPage.value = index;
                      //             },
                      //             itemBuilder: (_, index) {
                      //               return Obx(
                      //                   ()=> ListView.builder(
                      //                   // physics: BouncingScrollPhysics(),
                      //                     scrollDirection: Axis.horizontal,
                      //                     // padding: EdgeInsets.zero,
                      //                     //shrinkWrap: true,
                      //                     itemCount: 8,
                      //                     itemBuilder: (context, index) {
                      //                       return Container(
                      //                           color: Colors.yellow,
                      //                           // padding: EdgeInsets.all(1.w),
                      //                           child: Container(
                      //                             color: Colors.white,
                      //                             width: _width * 0.25,
                      //                             margin: EdgeInsets.zero,
                      //                             padding: const EdgeInsets.symmetric(
                      //                                 horizontal: 8,
                      //                                 vertical: 8
                      //                             ),
                      //                             child: Column(
                      //                               children: [
                      //                                 GestureDetector(
                      //                                     onTap:(){},
                      //                                     child: Container(
                      //                                       padding: EdgeInsets.zero,
                      //                                       decoration:  BoxDecoration(
                      //                                           shape: BoxShape.circle,
                      //                                           boxShadow: [
                      //                                             BoxShadow(
                      //                                                 color: Colors.grey.withOpacity(0.5),
                      //                                                 blurRadius: 1,
                      //                                                 spreadRadius: 1,
                      //                                                 offset: Offset(0, 3)
                      //                                             )
                      //                                           ]
                      //                                       ),
                      //                                       child: CircleAvatar(
                      //                                         radius: _height * 0.045,
                      //                                         backgroundColor: homeBoxColor,
                      //                                         child: Container(
                      //                                           margin: EdgeInsets.symmetric(
                      //                                               horizontal: _width * 0.02,
                      //                                               vertical: _height * 0.0075
                      //                                           ),
                      //                                           //padding: EdgeInsets.symmetric(horizontal: _width * 0.02, vertical: _height * 0.01),
                      //                                           decoration: BoxDecoration(
                      //                                               shape: BoxShape.circle,
                      //                                               image: DecorationImage(image: AssetImage(
                      //                                                   categoriesList[index]["image"]
                      //                                               ),
                      //                                                   fit: BoxFit.contain
                      //                                               )
                      //                                           ),
                      //                                         ),
                      //                                       ),
                      //                                     )
                      //                                 ),
                      //                                 SizedBox(height: 10,),
                      //                                 Padding(
                      //                                   padding: EdgeInsets.only(left: 5),
                      //                                   child: TextWidget(
                      //                                     textTitle: categoriesList[index]["name"],
                      //                                     fontFamily: montserratRegular,
                      //                                     fontSize: 12.0,
                      //                                     fontWeight: FontWeight.w600,
                      //                                     color: Colors.black,
                      //                                     maxLines: 2,
                      //                                     overFlow: TextOverflow.ellipsis,
                      //                                   ),
                      //                                 ),
                      //                               ],
                      //                             ),
                      //                           ));
                      //                     }
                      //                 ),
                      //               );
                      //             },
                      //             itemCount: 6,
                      //           ),
                      //
                      //         ),
                      //         SizedBox(height: 16.0),
                      //         // buildPageIndicator(),
                      //
                      // SmoothPageIndicator(
                      //     controller: controller.pageController,
                      //     // PageController
                      //     axisDirection: Axis.horizontal,
                      //     count: 4,
                      //     effect:
                      //     ScrollingDotsEffect(
                      //         dotColor: Colors.black,
                      //         activeDotColor: homeBoxColor,
                      //         dotWidth: 4.w,
                      //         dotHeight: 4.h
                      //     ),
                      //     // your preferred effect
                      //     onDotClicked: (index) {
                      //       print(index);
                      //     })
                      //       ],
                      //     ),

                          /// Free Shipping / Free Return
                          // Stack(
                          //   children: [
                          //     Container(
                          //         width: double.infinity,
                          //         margin: EdgeInsets.symmetric(horizontal: _width * 0.05),
                          //         padding: EdgeInsets.symmetric(vertical: _height * 0.025),
                          //         decoration: BoxDecoration(
                          //             color: Colors.white,
                          //             boxShadow: [
                          //               BoxShadow(
                          //                   color: Colors.grey.withOpacity(0.3),
                          //                   blurRadius: 6.0,
                          //                   //spreadRadius: 1,
                          //                   offset: Offset(0, 0)
                          //               )
                          //             ]
                          //         ),
                          //         child: Row(
                          //           mainAxisAlignment: MainAxisAlignment.center,
                          //           crossAxisAlignment: CrossAxisAlignment.center,
                          //           children: [
                          //             Image.asset(
                          //               ImageUtils.shippingIcon3,
                          //               height: _height * 0.04,
                          //             ),
                          //             SizedBox(width: _width * 0.04,),
                          //             RichText(
                          //               text: const TextSpan(
                          //                 text: 'Free Shipping / Free Return\n',
                          //                 style:
                          //                 TextStyle(
                          //                     fontSize: 16.0,
                          //                     color: homeBoxColor,
                          //                     fontWeight: FontWeight.bold,
                          //                     fontFamily: poppinsMedium
                          //                 ),
                          //                 children:  <TextSpan>[
                          //                   TextSpan(
                          //                       text: 'For all orders above\$99',
                          //                       style:
                          //                       TextStyle(
                          //                           height: 1.2,
                          //                           fontSize: 13.0,
                          //                           color: Colors.black,
                          //                           fontWeight: FontWeight.normal,
                          //                           fontFamily: poppinsRegular
                          //                       )
                          //                   ),
                          //                 ],
                          //               ),
                          //             ),
                          //           ],
                          //         )
                          //     ),
                          //
                          //     Positioned(
                          //       top: _height * 0.0275,
                          //       left: _width * 0,
                          //       child: Container(
                          //         // alignment: Alignment.center,
                          //         padding: EdgeInsets.symmetric(
                          //             vertical: _height * 0.0025, horizontal: _width * 0.025
                          //         ),
                          //         decoration: BoxDecoration(
                          //             color: Colors.white,
                          //             shape: BoxShape.circle,
                          //             boxShadow: [
                          //               BoxShadow(
                          //                   color: Colors.black.withOpacity(0.2),
                          //                   blurRadius: 1,
                          //                   spreadRadius: 1,
                          //                   offset: Offset(0, 3)
                          //               )
                          //             ]
                          //         ),
                          //         child: Center(
                          //             child:
                          //             Image.asset(
                          //               ImageUtils.backIcon,
                          //               height: _height * 0.03,
                          //             )
                          //         ),
                          //       ),
                          //     ),
                          //
                          //     Positioned(
                          //       top: _height * 0.0275,
                          //       right: _width * 0,
                          //       child: Container(
                          //         // alignment: Alignment.center,
                          //         padding: EdgeInsets.symmetric(
                          //             vertical: _height * 0.0025, horizontal: _width * 0.025
                          //         ),
                          //         decoration: BoxDecoration(
                          //             color: Colors.white,
                          //             shape: BoxShape.circle,
                          //             boxShadow: [
                          //               BoxShadow(
                          //                   color: Colors.black.withOpacity(0.2),
                          //                   blurRadius: 1,
                          //                   spreadRadius: 1,
                          //                   offset: Offset(0, 3)
                          //               )
                          //             ]
                          //         ),
                          //         child: Center(
                          //             child:
                          //             Image.asset(
                          //               ImageUtils.backIcon,
                          //               height: _height * 0.03,
                          //             )
                          //         ),
                          //       ),
                          //     )
                          //   ],
                          // ),


                          /// Flash Deal
                          SizedBox(height: _height * 0.01,),
                          TextWidget1(
                            textTitle: 'Flash Deal',
                            style: CustomTheme.heading,
                          ),

                         //SizedBox(height: _height * 0.02,),
                          TextWidget1(
                            textTitle: 'Upto 50% off',
                            style: CustomTheme.italicHeading,
                          ),
                          /// CountDown
                          SizedBox(height: _height * 0.01,),
                          SlideCountdownSeparated(
                            height: Get.height * 0.0325,
                            width: Get.width * 0.07,
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontFamily: poppinsMedium,
                              fontSize: Get.height * 0.02
                            ),

                            duration: const Duration(hours: 12),
                            decoration: BoxDecoration(
                              color: homeBoxColor,
                              borderRadius: BorderRadius.circular(
                                _width * 0.005
                              )
                            ),

                          ),


                          /// PageView SmoothPage Indicator
                          // SizedBox(
                          //   height: 240,
                          //   child: PageView.builder(
                          //     controller: controller1,
                          //     // itemCount: pages.length,
                          //     itemBuilder: (_, index) {
                          //       return pages[index % pages.length];
                          //     },
                          //   ),
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.only(top: 24, bottom: 12),
                          //   child: Text(
                          //     'Worm',
                          //     style: TextStyle(color: Colors.black54),
                          //   ),
                          // ),
                          // SmoothPageIndicator(
                          //   controller: controller1,
                          //   count: pages.length,
                          //   effect: const WormEffect(
                          //     dotHeight: 16,
                          //     dotWidth: 16,
                          //     type: WormType.thinUnderground,
                          //   ),
                          // ),

                          SizedBox(height: _height * 0.01,),

                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                                horizontal: _width * 0.06,
                                vertical: _height * 0.02
                            ),
                            itemCount: 4, // Number of containers
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: columnsCount,
                                // childAspectRatio: _height * 0.000835,
                                childAspectRatio: Get.width*1.35 / Get.height*1.04,
                              crossAxisSpacing: Get.width * 0.06,
                              mainAxisSpacing: Get.height * 0.025
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              // Build each container
                              return  GestureDetector(
                                onTap: ()async{
                                  Get.dialog(
                                      const Center(
                                          child: CircularProgressIndicator(
                                            color: homeBoxColor,
                                          )
                                      ));
                                  await Future.delayed(const Duration(seconds: 2));
                                  Get.back();
                                  Get.to(
                                      ProductDetails(
                                        check1: 0,
                                        imageIndex: controller.itemsList[index],
                                      )
                                  );
                                },
                                child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: _width * 0.0225, vertical: _height * 0.0125),
                                      decoration: BoxDecoration(
                                        color: gridColor,
                                        borderRadius: BorderRadius.circular(_width * 0.025),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 3,
                                            //spreadRadius: 5,
                                            offset: Offset(0, 5), // Shadow position
                                          ),],
                                      ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: _width * 0.285),
                                          padding: EdgeInsets.symmetric(horizontal: _width * 0.005, vertical: _height * 0.004),
                                          decoration: BoxDecoration(
                                            color: homeBoxColor,
                                            borderRadius: BorderRadius.circular(_width * 0.0105),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  blurRadius: 3,
                                                  //spreadRadius: 5,
                                                  offset: Offset(0, 3), // Shadow position
                                                ),]
                                          ),
                                          child: Center(
                                            child: TextWidget(
                                              textTitle: '25%',
                                              fontFamily: montserratSemiBold,
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: _height * 0.02,),
                                        Container(
                                          height: _height * 0.115,
                                          width: double.infinity,
                                          margin: EdgeInsets.symmetric(horizontal: _width * 0.018),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: gridColor,
                                            image:  DecorationImage(image:
                                            AssetImage(
                                               controller.itemsList[index].image1
                                              //ImageUtils.dealItem
                                            ),
                                            fit: BoxFit.contain,
                                            )
                                          ),
                                        ),
                                        SizedBox(height: _height * 0.01,),
                                        TextWidget1(
                                          //textTitle: 'Microwave Oven',
                                          textTitle: controller.itemsList[index].name,
                                          style: CustomTheme.productName,
                                          maxLines: 1,
                                          overFlow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: _height * 0.004,),
                                        TextWidget1(
                                          textTitle: '\$75.00',
                                          style: CustomTheme.productPrice,
                                        ),
                                        SizedBox(height: _height * 0.0025,),
                                        RatingWidget(
                                          initialRating: 4.5,
                                        ),
                                        SizedBox(height: _height * 0.006,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomGridButton(
                                              onTap: (){
                                                Get.dialog(
                                                  CustomDialogSimple(
                                                      title: 'Added To Cart',
                                                      description: 'your item has been added to cart',
                                                      okTap: true)
                                                );
                                              },
                                              title: 'Add to cart',
                                            ),
                                            GestureDetector(
                                              onTap: (){},
                                              child: Container(
                                                padding: EdgeInsets.symmetric(horizontal: _width * 0.025, vertical: _height * 0.005),
                                                decoration: BoxDecoration(
                                                    color: homeBoxColor.withOpacity(0.5),
                                                    borderRadius: BorderRadius.circular(_width * 0.01)
                                                ),
                                                child:
                                                LikeButton(
                                                  size: Get.height * 0.015,
                                                  // circleColor: CircleColor(
                                                  //     start: Colors.white, end: Colors.yellowAccent
                                                  // ),
                                                  circleColor:
                                                  const CircleColor(
                                                      start: Colors.redAccent,
                                                      end: Colors.yellowAccent),
                                                  bubblesColor: const BubblesColor(
                                                    dotPrimaryColor: Colors.redAccent,
                                                    dotSecondaryColor: Colors.red,
                                                  ),
                                                  likeBuilder: (isTapped){
                                                    return Icon(
                                                      isTapped ?
                                                      Icons.favorite : Icons.favorite_border,
                                                      color: isTapped ? Colors.red : Colors.white,
                                                      size: Get.height * 0.015,
                                                    );
                                                  },
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )

                                    // Column(
                                    //   children:[
                                    //     Row(
                                    //     crossAxisAlignment: CrossAxisAlignment.start,
                                    //     children: [
                                    //       SizedBox(width: _width * 0.02,),
                                    //       TextWidget(
                                    //         textTitle: 'Learning Lessons',
                                    //         color: ColorUtils.white,
                                    //         fontFamily: FontUtils.montserratSemiBold,
                                    //         fontSize: 1.5.t,
                                    //       ),
                                    //     ],
                                    //   ),
                                    //     SizedBox(height: _height * 0.018,),
                                    //     Row(
                                    //       //crossAxisAlignment: CrossAxisAlignment.end,
                                    //       mainAxisAlignment: MainAxisAlignment.end,
                                    //       children: [
                                    //         CircleAvatar(
                                    //           backgroundColor: Colors.white,
                                    //           radius: _height * 0.0275,
                                    //           // backgroundImage: AssetImage(
                                    //           //     ImageUtils.homeIcon1,
                                    //           // ),
                                    //           child: Image.asset(ImageUtils.homeIcon2, height: _height * 0.035,),
                                    //         ),
                                    //         SizedBox(width: _width * 0.020,),
                                    //       ],
                                    //     ),
                                    //
                                    // ]),

                                ),
                              );
                            },
                          ),
                          SizedBox(height: _height * 0.015,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ShowMoreButton(
                                onTap: (){
                                  Get.toNamed(kShowMoreScreen);
                                },
                                title: 'Show more',
                              )
                          ]
                          ),
                          SizedBox(height: _height * 0.025,),

                          Row(
                              children:[
                                SizedBox(width: _width * 0.04,),
                                TextWidget(
                                  textTitle: 'Daily Deals',
                                  fontFamily: montserratSemiBold,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ]),

                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                                horizontal: _width * 0.06,
                                vertical: _height * 0.02
                            ),
                            itemCount: 4, // Number of containers
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: columnsCount,

                              // childAspectRatio: Get.height * 0.000835,
                                childAspectRatio: Get.width*1.35 / Get.height*1.04,
                              // crossAxisSpacing: 25.0,
                              // mainAxisSpacing: 25.0,
                                crossAxisSpacing: Get.width * 0.06,
                                mainAxisSpacing: Get.height * 0.025
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              // Build each container
                              return  GestureDetector(
                                onTap: ()async{
                                  controller.homeTap = true;
                                  Get.dialog(
                                      const Center(
                                          child: CircularProgressIndicator(
                                            color: homeBoxColor,
                                          )
                                      ));
                                  await Future.delayed(const Duration(seconds: 2));
                                  Get.back();
                                  Get.to(
                                      ProductDetails(
                                          check1: 0,
                                          imageIndex: controller.dailyDealsList[index])
                                  );
                                },
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: _width * 0.0225, vertical: _height * 0.0125),
                                    decoration: BoxDecoration(
                                      color: gridColor,
                                      borderRadius: BorderRadius.circular(_width * 0.025),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 3,
                                          //spreadRadius: 5,
                                          offset: Offset(0, 5), // Shadow position
                                        ),],
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: _width * 0.285),
                                          padding: EdgeInsets.symmetric(horizontal: _width * 0.005, vertical: _height * 0.004),
                                          decoration: BoxDecoration(
                                              color: homeBoxColor,
                                              borderRadius: BorderRadius.circular(_width * 0.0105),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  blurRadius: 3,
                                                  //spreadRadius: 5,
                                                  offset: Offset(0, 3), // Shadow position
                                                ),]
                                          ),
                                          child: Center(
                                            child: TextWidget(
                                              textTitle: '25%',
                                              fontFamily: montserratSemiBold,
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: _height * 0.02,),
                                        Container(
                                          height: _height * 0.115,
                                          width: double.infinity,
                                          margin: EdgeInsets.symmetric(horizontal: _width * 0.018),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: gridColor,
                                              image: DecorationImage(image: AssetImage(
                                                controller.dailyDealsList[index].image1
                                              ),
                                                fit: BoxFit.contain,
                                              )
                                          ),
                                        ),
                                        SizedBox(height: _height * 0.01,),
                                        TextWidget1(
                                          textTitle: controller.dailyDealsList[index].name,
                                          style: CustomTheme.productName,
                                        ),
                                        SizedBox(height: _height * 0.002,),
                                        TextWidget1(
                                          textTitle: '\$75.00',
                                          style: CustomTheme.productPrice,
                                        ),
                                        SizedBox(height: _height * 0.0025,),
                                        RatingWidget(
                                          initialRating: 4.5,
                                        ),
                                        SizedBox(height: _height * 0.006,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomGridButton(
                                              onTap: (){
                                                Get.dialog(
                                                    CustomDialogSimple(
                                                        title: 'Added To Cart',
                                                        description: 'your item has been added to cart',
                                                        okTap: true)
                                                );
                                              },
                                              title: 'Add to cart',
                                            ),
                                            GestureDetector(
                                              onTap: (){},
                                              child: Container(
                                                padding: EdgeInsets.symmetric(horizontal: _width * 0.025, vertical: _height * 0.005),
                                                decoration: BoxDecoration(
                                                    color: homeBoxColor.withOpacity(0.5),
                                                    borderRadius: BorderRadius.circular(_width * 0.01)
                                                ),
                                                child:
                                                // Center(
                                                //     child: Icon(
                                                //       Icons.favorite_border_outlined, size: _height * 0.015,
                                                //       color: Colors.white,
                                                //     )
                                                // ),
                                                LikeButton(
                                                  size: Get.height * 0.015,
                                                  // circleColor: CircleColor(
                                                  //     start: Colors.white, end: Colors.yellowAccent
                                                  // ),
                                                  circleColor:
                                                  const CircleColor(
                                                      start: Colors.redAccent,
                                                      end: Colors.yellowAccent),
                                                  bubblesColor: const BubblesColor(
                                                    dotPrimaryColor: Colors.redAccent,
                                                    dotSecondaryColor: Colors.red,
                                                  ),
                                                  likeBuilder: (isTapped){
                                                    return Icon(
                                                      isTapped ?
                                                      Icons.favorite : Icons.favorite_border,
                                                      color: isTapped ? Colors.red : Colors.white,
                                                      size: Get.height * 0.015,
                                                    );
                                                  },
                                                ),
                                              ),
                                            )
                                          ],
                                        ),

                                      ],
                                    )

                                  // Column(
                                  //   children:[
                                  //     Row(
                                  //     crossAxisAlignment: CrossAxisAlignment.start,
                                  //     children: [
                                  //       SizedBox(width: _width * 0.02,),
                                  //       TextWidget(
                                  //         textTitle: 'Learning Lessons',
                                  //         color: ColorUtils.white,
                                  //         fontFamily: FontUtils.montserratSemiBold,
                                  //         fontSize: 1.5.t,
                                  //       ),
                                  //     ],
                                  //   ),
                                  //     SizedBox(height: _height * 0.018,),
                                  //     Row(
                                  //       //crossAxisAlignment: CrossAxisAlignment.end,
                                  //       mainAxisAlignment: MainAxisAlignment.end,
                                  //       children: [
                                  //         CircleAvatar(
                                  //           backgroundColor: Colors.white,
                                  //           radius: _height * 0.0275,
                                  //           // backgroundImage: AssetImage(
                                  //           //     ImageUtils.homeIcon1,
                                  //           // ),
                                  //           child: Image.asset(ImageUtils.homeIcon2, height: _height * 0.035,),
                                  //         ),
                                  //         SizedBox(width: _width * 0.020,),
                                  //       ],
                                  //     ),
                                  //
                                  // ]),

                                ),
                              );
                            },
                          ),
                          SizedBox(height: _height * 0.015,),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ShowMoreButton(
                                  onTap: (){
                                    Get.toNamed(kShowMoreScreen2);
                                  },
                                  title: 'Show more',
                                )
                              ]
                          ),
                          SizedBox(height: _height * 0.035,),

                          SizedBox(
                            height: _height * 0.15,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: shopNow1.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: _width * 0.9,
                                  height: _height * 0.15,
                                  margin: EdgeInsets.only(right: _width * 0.035),
                                  //color: Colors.yellow,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      image: DecorationImage(image: AssetImage(
                                          shopNow1[index]["image"]
                                      ),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: _height * 0.05,
                                        left: _width * 0.515,
                                        child: TextWidget(
                                          textTitle: shopNow1[index]["categoryName"],
                                          fontFamily: montserratBold,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w900,
                                          color: shopNow1[index]["textColor"],
                                        ),
                                      ),
                                      Positioned(
                                          top: _height * 0.0875,
                                          left: _width * 0.515,
                                          child: ShopNowButton(
                                            onTap: (){},
                                            color: shopNow1[index]["boxColor"],
                                            title: 'Shop Now',
                                            textColor: shopNow1[index]["textColor1"],
                                          )
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),

                          // SizedBox(
                          //   height: _height * 0.1,
                          //   child: ListView.builder(
                          //       physics: BouncingScrollPhysics(),
                          //       scrollDirection: Axis.horizontal,
                          //       padding: EdgeInsets.zero,
                          //       shrinkWrap: true,
                          //       itemCount: 1,
                          //       itemBuilder: (context, index) {
                          //         return Container(
                          //           color: Colors.red,
                          //           width: _width * 0.1,
                          //           height: _height * 0.05,
                          //           //constraints: BoxConstraints(),
                          //         );
                          //       }
                          //       ),
                          // ),

                          SizedBox(height: _height * 0.025,),
                          Row(
                              children:[
                                SizedBox(width: _width * 0.04,),
                                TextWidget(
                                  textTitle: 'New Arrivals',
                                  fontFamily: montserratSemiBold,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ]),
                          /// New Arrivals
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                                horizontal: _width * 0.06,
                                vertical: _height * 0.02
                            ),
                            itemCount: 4, // Number of containers
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: columnsCount,

                               // childAspectRatio: Get.height * 0.000835,
                                childAspectRatio: Get.width*1.35 / Get.height*1.05,
                              // crossAxisSpacing: 25.0,
                              // mainAxisSpacing: 25.0,
                                crossAxisSpacing: Get.width * 0.06,
                                mainAxisSpacing: Get.height * 0.025
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              // Build each container
                              return  GestureDetector(
                                onTap: ()async{
                                 Get.dialog(
                                     const Center(
                                         child: CircularProgressIndicator(
                                           color: homeBoxColor,
                                         )
                                     ));
                                 await Future.delayed(const Duration(seconds: 2));
                                 Get.back();
                                 Get.to(
                                     ProductDetails(
                                         check1: 0,
                                         imageIndex: controller.newArrivalsList[index])
                                 );
                                },
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: _width * 0.0225, vertical: _height * 0.0125),
                                    decoration: BoxDecoration(
                                      color: gridColor,
                                      borderRadius: BorderRadius.circular(_width * 0.025),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 3,
                                          //spreadRadius: 5,
                                          offset: Offset(0, 5), // Shadow position
                                        ),],
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          height: _height * 0.1625,
                                          width: double.infinity,
                                          margin: EdgeInsets.symmetric(horizontal: _width * 0.018),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: gridColor,
                                              image: DecorationImage(image: AssetImage(
                                                  controller.newArrivalsList[index].image1
                                              ),
                                                fit: BoxFit.cover,
                                              )
                                          ),
                                        ),
                                        SizedBox(height: _height * 0.01,),
                                        TextWidget1(
                                          textTitle: controller.newArrivalsList[index].name,
                                         style: CustomTheme.productName,
                                        ),
                                        SizedBox(height: _height * 0.002,),
                                        TextWidget1(
                                          textTitle: '\$75.00',
                                          style: CustomTheme.productPrice,
                                        ),
                                        SizedBox(height: _height * 0.0025,),
                                        RatingWidget(
                                          initialRating: 4.5,
                                        ),
                                        SizedBox(height: _height * 0.006,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomGridButton(
                                              onTap: (){
                                                Get.dialog(
                                                    CustomDialogSimple(
                                                        title: 'Added To Cart',
                                                        description: 'your item has been added to cart',
                                                        okTap: true)
                                                );
                                              },
                                              title: 'Add to cart',
                                            ),
                                            GestureDetector(
                                              onTap: (){},
                                              child: Container(
                                                padding: EdgeInsets.symmetric(horizontal: _width * 0.025, vertical: _height * 0.005),
                                                decoration: BoxDecoration(
                                                    color: homeBoxColor.withOpacity(0.5),
                                                    borderRadius: BorderRadius.circular(_width * 0.01)
                                                ),
                                                child: LikeButton(
                                                  size: Get.height * 0.015,
                                                  // circleColor: CircleColor(
                                                  //     start: Colors.white, end: Colors.yellowAccent
                                                  // ),
                                                  circleColor:
                                                  const CircleColor(
                                                      start: Colors.redAccent,
                                                      end: Colors.yellowAccent),
                                                  bubblesColor: const BubblesColor(
                                                    dotPrimaryColor: Colors.redAccent,
                                                    dotSecondaryColor: Colors.red,
                                                  ),
                                                  likeBuilder: (isTapped){
                                                    return Icon(
                                                      isTapped ?
                                                      Icons.favorite : Icons.favorite_border,
                                                      color: isTapped ? Colors.red : Colors.white,
                                                      size: Get.height * 0.015,
                                                    );
                                                  },
                                                ),
                                              ),
                                            )
                                          ],
                                        ), 
                                      ],
                                    )


                                  // Column(
                                  //   children:[
                                  //     Row(
                                  //     crossAxisAlignment: CrossAxisAlignment.start,
                                  //     children: [
                                  //       SizedBox(width: _width * 0.02,),
                                  //       TextWidget(
                                  //         textTitle: 'Learning Lessons',
                                  //         color: ColorUtils.white,
                                  //         fontFamily: FontUtils.montserratSemiBold,
                                  //         fontSize: 1.5.t,
                                  //       ),
                                  //     ],
                                  //   ),
                                  //     SizedBox(height: _height * 0.018,),
                                  //     Row(
                                  //       //crossAxisAlignment: CrossAxisAlignment.end,
                                  //       mainAxisAlignment: MainAxisAlignment.end,
                                  //       children: [
                                  //         CircleAvatar(
                                  //           backgroundColor: Colors.white,
                                  //           radius: _height * 0.0275,
                                  //           // backgroundImage: AssetImage(
                                  //           //     ImageUtils.homeIcon1,
                                  //           // ),
                                  //           child: Image.asset(ImageUtils.homeIcon2, height: _height * 0.035,),
                                  //         ),
                                  //         SizedBox(width: _width * 0.020,),
                                  //       ],
                                  //     ),
                                  //
                                  // ]),

                                ),
                              );
                            },
                          ),
                          SizedBox(height: _height * 0.015,),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ShowMoreButton(
                                  onTap: (){
                                    Get.toNamed(kShowMoreScreen3);
                                  },
                                  title: 'Show more',
                                )
                              ]
                          ),
                          SizedBox(height: _height * 0.025,),

                          Row(
                              children:[
                                SizedBox(width: _width * 0.04,),
                                TextWidget(
                                  textTitle: 'Promotions',
                                  fontFamily: montserratSemiBold,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ]),
                          /// Promotions
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                                horizontal: _width * 0.06,
                                vertical: _height * 0.02
                            ),
                            itemCount: 4, // Number of containers
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: columnsCount,

                                //childAspectRatio: Get.height * 0.00087,
                                childAspectRatio: Get.width*1.35 / Get.height*1.04,
                              // crossAxisSpacing: 25.0,
                              // mainAxisSpacing: 25.0,
                                crossAxisSpacing: Get.width * 0.06,
                                mainAxisSpacing: Get.height * 0.025
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              // Build each container
                              return  GestureDetector(
                                onTap: ()async{
                                  Get.dialog(
                                      const Center(
                                          child: CircularProgressIndicator(
                                            color: homeBoxColor,
                                          )
                                      ));
                                  await Future.delayed(const Duration(seconds: 2));
                                  Get.back();
                                  Get.to(
                                      ProductDetails(
                                          check1: 0,
                                          imageIndex: controller.promotionsList[index])
                                  );
                                },
                                child: Container(
                                   // padding: EdgeInsets.symmetric(horizontal: _width * 0.0225, vertical: _height * 0.0125),
                                    decoration: BoxDecoration(
                                      color: gridColor,
                                      borderRadius: BorderRadius.circular(_width * 0.025),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 3,
                                          //spreadRadius: 5,
                                          offset: Offset(0, 5), // Shadow position
                                        ),],
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        margin: EdgeInsets.symmetric(horizontal: _width * 0.01),
                                        height: _height * 0.15,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: gridColor,
                                          image: DecorationImage(image: AssetImage(
                                            controller.promotionsList[index].image1
                                          ),
                                          fit: BoxFit.contain
                                          )
                                        ),
                                      ),
                                    )



                                    // Container(
                                    //   width: double.infinity,
                                    //   margin: EdgeInsets.symmetric(horizontal: _width * 0.02,  vertical: _height * 0.05),
                                    //   //alignment: Alignment.center,
                                    //   decoration: BoxDecoration(
                                    //     color: Colors.red,
                                    //     image: DecorationImage(
                                    //         image: AssetImage(
                                    //       ImageUtils.promotionPic
                                    //     ),
                                    //     fit: BoxFit.cover
                                    //     )
                                    //   ),
                                    // ),


                                  // Column(
                                  //   children:[
                                  //     Row(
                                  //     crossAxisAlignment: CrossAxisAlignment.start,
                                  //     children: [
                                  //       SizedBox(width: _width * 0.02,),
                                  //       TextWidget(
                                  //         textTitle: 'Learning Lessons',
                                  //         color: ColorUtils.white,
                                  //         fontFamily: FontUtils.montserratSemiBold,
                                  //         fontSize: 1.5.t,
                                  //       ),
                                  //     ],
                                  //   ),
                                  //     SizedBox(height: _height * 0.018,),
                                  //     Row(
                                  //       //crossAxisAlignment: CrossAxisAlignment.end,
                                  //       mainAxisAlignment: MainAxisAlignment.end,
                                  //       children: [
                                  //         CircleAvatar(
                                  //           backgroundColor: Colors.white,
                                  //           radius: _height * 0.0275,
                                  //           // backgroundImage: AssetImage(
                                  //           //     ImageUtils.homeIcon1,
                                  //           // ),
                                  //           child: Image.asset(ImageUtils.homeIcon2, height: _height * 0.035,),
                                  //         ),
                                  //         SizedBox(width: _width * 0.020,),
                                  //       ],
                                  //     ),
                                  //
                                  // ]),

                                ),
                              );
                            },
                          ),
                          SizedBox(height: _height * 0.015,),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ShowMoreButton(
                                  onTap: (){
                                    Get.toNamed(kShowMoreScreen4);
                                  },
                                  title: 'Show more',
                                )
                              ]
                          ),
                          SizedBox(height: _height * 0.035,),

                          SizedBox(
                            height: _height * 0.15,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: shopNow2.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: _width * 0.9,
                                  height: _height * 0.15,
                                  margin: EdgeInsets.only(right: _width * 0.035),
                                  //color: Colors.yellow,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      image: DecorationImage(image: AssetImage(
                                          shopNow2[index]["image"]
                                      ),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: _height * 0.05,
                                        left: _width * 0.515,
                                        child: TextWidget(
                                          textTitle: shopNow2[index]["categoryName"],
                                          fontFamily: montserratBold,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Positioned(
                                        top: _height * 0.0875,
                                        left: _width * 0.515,
                                        child: ShopNowButton(
                                          onTap: (){},
                                          color: shopNow2[index]["boxColor"],
                                          title: 'Shop Now',
                                          textColor: shopNow2[index]["textColor1"],
                                        )
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),

                          SizedBox(height: _height * 0.025,),

                          Row(
                              children:[
                                SizedBox(width: _width * 0.04,),
                                TextWidget(
                                  textTitle: 'Top Sellers',
                                  fontFamily: montserratSemiBold,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ]),
                          /// Top Sellers
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                                horizontal: _width * 0.06,
                                vertical: _height * 0.02
                            ),
                            itemCount: 4, // Number of containers
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: columnsCount,

                                //childAspectRatio: Get.height * 0.00087,
                                childAspectRatio: Get.width*1.35 / Get.height*1.04,
                              // crossAxisSpacing: 25.0,
                              // mainAxisSpacing: 25.0,
                                crossAxisSpacing: Get.width * 0.06,
                                mainAxisSpacing: Get.height * 0.025
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              // Build each container
                              return  GestureDetector(
                                onTap: ()async{
                                 Get.dialog(
                                     const Center(
                                         child: CircularProgressIndicator(
                                           color: homeBoxColor,
                                         )
                                     ));
                                 await Future.delayed(const Duration(seconds: 2));
                                 Get.back();
                                 Get.to(
                                     ProductDetails(
                                         check1: 0,
                                         imageIndex: controller.topSellersList[index])
                                 );
                                },
                                child: Container(
                                  // padding: EdgeInsets.symmetric(horizontal: _width * 0.0225, vertical: _height * 0.0125),
                                    decoration: BoxDecoration(
                                      color: gridColor,
                                      borderRadius: BorderRadius.circular(_width * 0.025),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 3,
                                          //spreadRadius: 5,
                                          offset: Offset(0, 5), // Shadow position
                                        ),],
                                    ),
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       SizedBox(height: _height * 0.015,),
                                       Container(
                                         margin: EdgeInsets.symmetric(horizontal: _width * 0.02),
                                        // padding: EdgeInsets.symmetric(horizontal: _width * 0.01, vertical: _height * 0.02),
                                         height: _height * 0.15,
                                         width: double.infinity,
                                         decoration: BoxDecoration(
                                             color: gridColor,
                                             image: DecorationImage(image: AssetImage(
                                                 controller.topSellersList[index].image1
                                             ),
                                                 fit: BoxFit.contain
                                             )
                                         ),
                                       ),
                                       SizedBox(height: _height * 0.015,),
                                       TextWidget1(
                                         textTitle: controller.topSellersList[index].name,
                                         style: CustomTheme.topProductsName,
                                       ),
                                       SizedBox(height: _height * 0.0025,),
                                       RatingWidget(
                                         initialRating: 4.5,
                                       ),
                                       SizedBox(height: _height * 0.01,),
                                       CustomGridButton(
                                         onTap: (){},
                                         margin: EdgeInsets.symmetric(horizontal: _width * 0.06),
                                         title: 'View Shop',
                                       )
                                     ],
                                   ),



                                  // Container(
                                  //   width: double.infinity,
                                  //   margin: EdgeInsets.symmetric(horizontal: _width * 0.02,  vertical: _height * 0.05),
                                  //   //alignment: Alignment.center,
                                  //   decoration: BoxDecoration(
                                  //     color: Colors.red,
                                  //     image: DecorationImage(
                                  //         image: AssetImage(
                                  //       ImageUtils.promotionPic
                                  //     ),
                                  //     fit: BoxFit.cover
                                  //     )
                                  //   ),
                                  // ),


                                  // Column(
                                  //   children:[
                                  //     Row(
                                  //     crossAxisAlignment: CrossAxisAlignment.start,
                                  //     children: [
                                  //       SizedBox(width: _width * 0.02,),
                                  //       TextWidget(
                                  //         textTitle: 'Learning Lessons',
                                  //         color: ColorUtils.white,
                                  //         fontFamily: FontUtils.montserratSemiBold,
                                  //         fontSize: 1.5.t,
                                  //       ),
                                  //     ],
                                  //   ),
                                  //     SizedBox(height: _height * 0.018,),
                                  //     Row(
                                  //       //crossAxisAlignment: CrossAxisAlignment.end,
                                  //       mainAxisAlignment: MainAxisAlignment.end,
                                  //       children: [
                                  //         CircleAvatar(
                                  //           backgroundColor: Colors.white,
                                  //           radius: _height * 0.0275,
                                  //           // backgroundImage: AssetImage(
                                  //           //     ImageUtils.homeIcon1,
                                  //           // ),
                                  //           child: Image.asset(ImageUtils.homeIcon2, height: _height * 0.035,),
                                  //         ),
                                  //         SizedBox(width: _width * 0.020,),
                                  //       ],
                                  //     ),
                                  //
                                  // ]),

                                ),
                              );
                            },
                          ),
                          SizedBox(height: _height * 0.015,),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ShowMoreButton(
                                  onTap: (){
                                    Get.toNamed(kShowMoreScreen5);
                                  },
                                  title: 'Show more',
                                )
                              ]
                          ),
                          SizedBox(height: _height * 0.025,),

                          Row(
                              children:[
                                SizedBox(width: _width * 0.04,),
                                TextWidget(
                                  textTitle: 'Top Brands',
                                  fontFamily: montserratSemiBold,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ]),
                          /// Top Brands
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                                horizontal: _width * 0.06,
                                vertical: _height * 0.02
                            ),
                            itemCount: 4, // Number of containers
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: columnsCount,

                                //childAspectRatio: Get.height * 0.00087,
                                childAspectRatio: Get.width*1.35 / Get.height*1.04,
                              // crossAxisSpacing: 25.0,
                              // mainAxisSpacing: 25.0,
                                crossAxisSpacing: Get.width * 0.06,
                                mainAxisSpacing: Get.height * 0.025
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              // Build each container
                              return  GestureDetector(
                                onTap: ()async{
                                 Get.dialog(
                                     const Center(
                                         child: CircularProgressIndicator(
                                           color: homeBoxColor,
                                         )
                                     ));
                                 await Future.delayed(const Duration(seconds: 2));
                                 Get.back();
                                 Get.to(
                                     ProductDetails(
                                         check1: 0,
                                         imageIndex: controller.topBrandsList[index])
                                 );
                                },
                                child: Container(
                                  // padding: EdgeInsets.symmetric(horizontal: _width * 0.0225, vertical: _height * 0.0125),
                                  decoration: BoxDecoration(
                                    color: gridColor,
                                    borderRadius: BorderRadius.circular(_width * 0.025),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 3,
                                        //spreadRadius: 5,
                                        offset: Offset(0, 5), // Shadow position
                                      ),],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: _height * 0.015,),
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: _width * 0.06,),
                                        // padding: EdgeInsets.symmetric(horizontal: _width * 0.01, vertical: _height * 0.02),
                                        height: _height * 0.15,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: gridColor,
                                            image: DecorationImage(image: AssetImage(
                                                controller.topBrandsList[index].image1
                                            ),
                                                fit: BoxFit.contain
                                            )
                                        ),
                                      ),
                                      SizedBox(height: _height * 0.015,),
                                      TextWidget1(
                                        textTitle: controller.topBrandsList[index].name,
                                       style: CustomTheme.topProductsName,
                                      ),
                                      SizedBox(height: _height * 0.0025,),
                                      RatingWidget(
                                        initialRating: 4.5,
                                      ),
                                      SizedBox(height: _height * 0.01,),
                                      CustomGridButton(
                                        onTap: (){},
                                        margin: EdgeInsets.symmetric(horizontal: _width * 0.06),
                                        title: 'View',
                                      )
                                    ],
                                  ),
                                  // Container(
                                  //   width: double.infinity,
                                  //   margin: EdgeInsets.symmetric(horizontal: _width * 0.02,  vertical: _height * 0.05),
                                  //   //alignment: Alignment.center,
                                  //   decoration: BoxDecoration(
                                  //     color: Colors.red,
                                  //     image: DecorationImage(
                                  //         image: AssetImage(
                                  //       ImageUtils.promotionPic
                                  //     ),
                                  //     fit: BoxFit.cover
                                  //     )
                                  //   ),
                                  // ),


                                  // Column(
                                  //   children:[
                                  //     Row(
                                  //     crossAxisAlignment: CrossAxisAlignment.start,
                                  //     children: [
                                  //       SizedBox(width: _width * 0.02,),
                                  //       TextWidget(
                                  //         textTitle: 'Learning Lessons',
                                  //         color: ColorUtils.white,
                                  //         fontFamily: FontUtils.montserratSemiBold,
                                  //         fontSize: 1.5.t,
                                  //       ),
                                  //     ],
                                  //   ),
                                  //     SizedBox(height: _height * 0.018,),
                                  //     Row(
                                  //       //crossAxisAlignment: CrossAxisAlignment.end,
                                  //       mainAxisAlignment: MainAxisAlignment.end,
                                  //       children: [
                                  //         CircleAvatar(
                                  //           backgroundColor: Colors.white,
                                  //           radius: _height * 0.0275,
                                  //           // backgroundImage: AssetImage(
                                  //           //     ImageUtils.homeIcon1,
                                  //           // ),
                                  //           child: Image.asset(ImageUtils.homeIcon2, height: _height * 0.035,),
                                  //         ),
                                  //         SizedBox(width: _width * 0.020,),
                                  //       ],
                                  //     ),
                                  //
                                  // ]),

                                ),
                              );
                            },
                          ),
                          SizedBox(height: _height * 0.015,),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ShowMoreButton(
                                  onTap: (){
                                    Get.toNamed(kShowMoreScreen6);
                                  },
                                  title: 'Show more',
                                )
                              ]
                          ),
                          SizedBox(height: _height * 0.025,),

                          /// MoyenXpress Shipping
                          // Container(
                          //   margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
                          //   padding: EdgeInsets.symmetric(horizontal: _width * 0.06, vertical: _height * 0.04),
                          //   width: double.infinity,
                          //   decoration: const BoxDecoration(
                          //     image: DecorationImage(image: AssetImage(
                          //       ImageUtils.shippingImage
                          //     ),
                          //     fit: BoxFit.cover
                          //     )
                          //   ),
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       RichText(
                          //         text: const TextSpan(
                          //           text: 'Moyenxpress\n',
                          //           style:
                          //           TextStyle(
                          //               fontSize: 28.0,
                          //               fontWeight: FontWeight.bold,
                          //               fontFamily: poppinsBold
                          //           ),
                          //           children:  <TextSpan>[
                          //             TextSpan(
                          //                 text: 'Shipping',
                          //                 style:
                          //                 TextStyle(
                          //                   height: 1.1,
                          //                     fontSize: 42.0,
                          //                     fontWeight: FontWeight.bold,
                          //                     fontFamily: poppinsBold
                          //                 )
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //       SizedBox(height: _height * 0.02,),
                          //       Row(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: [
                          //           Image.asset(
                          //             ImageUtils.shippingIcon1,
                          //             height: _height * 0.03,
                          //             fit: BoxFit.cover,
                          //           ),
                          //           SizedBox(width: _width * 0.0225,),
                          //           RichText(
                          //             text: const TextSpan(
                          //               text: 'Ship With Moyen Xpress\n',
                          //              // style: DefaultTextStyle.of(context).style,
                          //                 style:
                          //                 TextStyle(
                          //                     fontSize: 14.0,
                          //                     fontWeight: FontWeight.bold,
                          //                     fontFamily: montserratBold
                          //                 ),
                          //               children:  <TextSpan>[
                          //                  TextSpan(
                          //                     text: 'Use Moyen Xpress as your shipping\n',
                          //                     style:
                          //                 TextStyle(
                          //                     fontSize: 10.0,
                          //                     fontWeight: FontWeight.normal,
                          //                   fontFamily: montserratMedium
                          //                 )
                          //                 ),
                          //                 TextSpan(
                          //                     text: 'target & get exclusive discounts.',
                          //                     style:
                          //                     TextStyle(
                          //                       fontSize: 10.0,
                          //                         fontWeight: FontWeight.normal,
                          //                         fontFamily: montserratMedium
                          //                     )
                          //                 ),
                          //               ],
                          //             ),
                          //           )
                          //         ],
                          //       ),
                          //
                          //       SizedBox(height: _height * 0.02,),
                          //       Row(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: [
                          //           Image.asset(
                          //             ImageUtils.shippingIcon2,
                          //             height: _height * 0.035,
                          //             fit: BoxFit.cover,
                          //           ),
                          //           SizedBox(width: _width * 0.018,),
                          //           RichText(
                          //             text: const TextSpan(
                          //               text: 'Send Anything, Anywhere\n',
                          //               style:
                          //               TextStyle(
                          //                   fontSize: 14.0,
                          //                   fontWeight: FontWeight.bold,
                          //                   fontFamily: montserratBold
                          //               ),
                          //               children:  <TextSpan>[
                          //                 TextSpan(
                          //                     text: 'Use Moyen Xpress shipping & send\n',
                          //                     style:
                          //                     TextStyle(
                          //                         fontSize: 10.0,
                          //                         fontWeight: FontWeight.normal,
                          //                         fontFamily: montserratMedium
                          //                     )
                          //                 ),
                          //                 TextSpan(
                          //                     text: 'anything, anywhere in the world.',
                          //                     style:
                          //                     TextStyle(
                          //                         fontSize: 10.0,
                          //                         fontWeight: FontWeight.normal,
                          //                         fontFamily: montserratMedium
                          //                     )
                          //                 ),
                          //               ],
                          //             ),
                          //           )
                          //         ],
                          //       )
                          //     ],
                          //   ),
                          // ),


                          /// Terms & Conditions
                          // Stack(
                          //   children: [
                          //     Container(
                          //       width: double.infinity,
                          //       margin: EdgeInsets.symmetric(horizontal: _width * 0.05),
                          //       padding: EdgeInsets.symmetric(vertical: _height * 0.025),
                          //       decoration: BoxDecoration(
                          //           color: Colors.white,
                          //           boxShadow: [
                          //             BoxShadow(
                          //                 color: Colors.grey.withOpacity(0.3),
                          //                 blurRadius: 6.0,
                          //                 //spreadRadius: 1,
                          //                 offset: Offset(0, 0)
                          //             )
                          //           ]
                          //       ),
                          //       child: Row(
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         crossAxisAlignment: CrossAxisAlignment.center,
                          //         children: [
                          //           Image.asset(
                          //             ImageUtils.termsIcon,
                          //             height: _height * 0.04,
                          //           ),
                          //           SizedBox(width: _width * 0.04,),
                          //           TextWidget(
                          //             textTitle: 'Terms & Conditions',
                          //             fontFamily: poppinsMedium,
                          //             fontSize: 20.0,
                          //             fontWeight: FontWeight.w600,
                          //             color: homeBoxColor,
                          //
                          //           ),
                          //         ],
                          //       )
                          //     ),
                          //
                          //     Positioned(
                          //       top: _height * 0.0275,
                          //       left: _width * 0,
                          //       child: Container(
                          //         // alignment: Alignment.center,
                          //         padding: EdgeInsets.symmetric(
                          //             vertical: _height * 0.0025, horizontal: _width * 0.025
                          //         ),
                          //         decoration: BoxDecoration(
                          //           color: Colors.white,
                          //           shape: BoxShape.circle,
                          //             boxShadow: [
                          //               BoxShadow(
                          //                   color: Colors.black.withOpacity(0.2),
                          //                   blurRadius: 1,
                          //                   spreadRadius: 1,
                          //                   offset: Offset(0, 3)
                          //               )
                          //             ]
                          //         ),
                          //         child: Center(
                          //           child:
                          //           Image.asset(
                          //             ImageUtils.backIcon,
                          //             height: _height * 0.03,
                          //           )
                          //         ),
                          //       ),
                          //     ),
                          //
                          //     Positioned(
                          //       top: _height * 0.0275,
                          //       right: _width * 0,
                          //       child: Container(
                          //         // alignment: Alignment.center,
                          //         padding: EdgeInsets.symmetric(
                          //             vertical: _height * 0.0025, horizontal: _width * 0.025
                          //         ),
                          //         decoration: BoxDecoration(
                          //             color: Colors.white,
                          //             shape: BoxShape.circle,
                          //             boxShadow: [
                          //               BoxShadow(
                          //                   color: Colors.black.withOpacity(0.2),
                          //                   blurRadius: 1,
                          //                   spreadRadius: 1,
                          //                   offset: Offset(0, 3)
                          //               )
                          //             ]
                          //         ),
                          //         child: Center(
                          //             child:
                          //             Image.asset(
                          //               ImageUtils.backIcon,
                          //               height: _height * 0.03,
                          //             )
                          //         ),
                          //       ),
                          //     )
                          //   ],
                          // ),

                          SizedBox(height: _height * 0.025,),


                        ],
                      ),

                      // ListView.separated(
                      //   itemCount: 10,
                      //   //physics: ScrollPhysics(),
                      //   scrollDirection: Axis.horizontal,
                      //   padding: EdgeInsets.zero,
                      //   physics: BouncingScrollPhysics(),
                      //   shrinkWrap: true,
                      //   separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 30,),
                      //   itemBuilder: (BuildContext context, int index) {
                      //     return Container(
                      //       //constraints: BoxConstraints(),
                      //       color: Colors.red,
                      //       height: 20,
                      //     );
                      //   },
                      // ),
                      ),
                  ),
                ),
              );


  }


   Widget buildPageIndicator() {
     return SmoothPageIndicator(
             controller: controller.pageController,
             // PageController
             axisDirection: Axis.horizontal,
             count: 4,
             effect:
             ScrollingDotsEffect(
                 dotColor: Colors.black,
                 activeDotColor: homeBoxColor,
                 dotWidth: 4.w,
                 dotHeight: 4.h
             ),
             // your preferred effect
             onDotClicked: (index) {
               print(index);
             });
   }
   Widget buildPage(BuildContext context) {
     controller.globalContext = context;
     double _height = MediaQuery.of(context).size.height;
     double _width = MediaQuery.of(context).size.width;
     return ListView.builder(
         // physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
         // padding: EdgeInsets.zero,
           //shrinkWrap: true,
         itemCount: 8,
         itemBuilder: (context, index) {
           return Container(
               color: Colors.yellow,
               // padding: EdgeInsets.all(1.w),
               child: Container(
                 color: Colors.white,
                 width: _width * 0.25,
                 margin: EdgeInsets.zero,
                 padding: const EdgeInsets.symmetric(
                     horizontal: 8,
                     vertical: 8
                 ),
                 child: Column(
                   children: [
                     GestureDetector(
                         onTap:(){},
                         child: Container(
                           padding: EdgeInsets.zero,
                           decoration:  BoxDecoration(
                               shape: BoxShape.circle,
                               boxShadow: [
                                 BoxShadow(
                                     color: Colors.grey.withOpacity(0.5),
                                     blurRadius: 1,
                                     spreadRadius: 1,
                                     offset: Offset(0, 3)
                                 )
                               ]
                           ),
                           child: CircleAvatar(
                             radius: _height * 0.045,
                             backgroundColor: homeBoxColor,
                             child: Container(
                               margin: EdgeInsets.symmetric(
                                   horizontal: _width * 0.02,
                                   vertical: _height * 0.0075
                               ),
                               //padding: EdgeInsets.symmetric(horizontal: _width * 0.02, vertical: _height * 0.01),
                               decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   image: DecorationImage(image: AssetImage(
                                       categoriesList[index]["image"]
                                   ),
                                       fit: BoxFit.contain
                                   )
                               ),
                             ),
                           ),
                         )
                     ),
                     SizedBox(height: _height * 0.0125,),
                     Padding(
                       padding: EdgeInsets.only(left: 5),
                       child: TextWidget(
                         textTitle: categoriesList[index]["name"],
                         fontFamily: montserratRegular,
                         fontSize: 12.0,
                         fontWeight: FontWeight.w600,
                         color: Colors.black,
                         maxLines: 2,
                         overFlow: TextOverflow.ellipsis,
                       ),
                     ),
                   ],
                 ),
               ));
         }
         );
   }


}



// class HomeScreen extends StatelessWidget {
//   final controller = PageController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Smooth Page Indicator'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView(
//               controller: controller,
//               children: [
//                 Container(color: Colors.red),
//                 Container(color: Colors.green),
//                 Container(color: Colors.blue),
//               ],
//             ),
//           ),
//           SizedBox(height: 16.0),
//           buildPageIndicator(),
//         ],
//       ),
//     );
//   }
//
//   Widget buildPageIndicator() {
//     return SmoothPageIndicator(
//         controller: controller,
//         // PageController
//         axisDirection: Axis.horizontal,
//         count: 3,
//         effect:
//         ScrollingDotsEffect(
//             dotColor: Colors.black,
//             activeDotColor: homeBoxColor,
//             dotWidth: 4.w,
//             dotHeight: 4.h
//         ),
//         // your preferred effect
//         onDotClicked: (index) {
//           print(index);
//         });
//   }
// }
//
//
//   Widget? CustomListView(BuildContext context){
//     double _height = MediaQuery.of(context).size.height;
//     double _width = MediaQuery.of(context).size.width;
//     return SizedBox(
//       height: _height * 0.140,
//       child: ListView.builder(
//           physics: BouncingScrollPhysics(),
//           scrollDirection: Axis.horizontal,
//           padding: EdgeInsets.zero,
//           shrinkWrap: true,
//           itemCount: categoriesList.length,
//           itemBuilder: (context, index) {
//             return Container(
//                 color: Colors.yellow,
//                 // padding: EdgeInsets.all(1.w),
//                 child: Container(
//                   color: Colors.white,
//                   width: _width * 0.25,
//                   margin: EdgeInsets.zero,
//                   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//                   child: Column(
//                     children: [
//                       GestureDetector(
//                           onTap:(){},
//                           child: Container(
//                             padding: EdgeInsets.zero,
//                             decoration:  BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 boxShadow: [
//                                   BoxShadow(
//                                       color: Colors.grey.withOpacity(0.5),
//                                       blurRadius: 1,
//                                       spreadRadius: 1,
//                                       offset: Offset(0, 3)
//                                   )
//                                 ]
//                             ),
//                             child: CircleAvatar(
//                               radius: _height * 0.045,
//                               backgroundColor: homeBoxColor,
//                             ),
//                           )
//                       ),
//                       SizedBox(height: 10,),
//                       Padding(
//                         padding: EdgeInsets.only(left: 5),
//                         child: TextWidget(
//                           textTitle: categoriesList[index]["name"],
//                           fontFamily: montserratRegular,
//                           fontSize: 12.0,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black,
//                           overFlow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ));
//           }),
//     );
//   }
//}
