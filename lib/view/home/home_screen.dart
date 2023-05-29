import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/rating_widget.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/custom_navbar.dart';
import '../../controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
   HomeScreen({super.key});

   dynamic pages = [];
   dynamic pagesVertical = [];

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

  @override
  Widget build(BuildContext context) {
    controller.globalContext = context;
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
              Scaffold(
                appBar: const CustomAppbar(),
                body: SingleChildScrollView(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          height: _height * 0.22,
                          //color: Colors.yellow,
                          decoration: const BoxDecoration(
                            color: Colors.yellow,
                            image: DecorationImage(image: AssetImage(
                              ImageUtils.homeBanner
                            ),
                            fit: BoxFit.fill
                            )
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children:[
                            SizedBox(width: _width * 0.04,),
                            TextWidget(
                            textTitle: 'Categories',
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                       ]),
                    const SizedBox(height: 10,),

                        SizedBox(
                          height: _height * 0.140,
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
                                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                                                  margin: EdgeInsets.symmetric(horizontal: _width * 0.02, vertical: _height * 0.0075),
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
                                          SizedBox(height: 10,),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: TextWidget(
                                              textTitle: categoriesList[index]["name"],
                                              fontFamily: montserratRegular,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                              overFlow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ));
                              }),
                        ),

                        SizedBox(height: _height * 0.02,),
                        Stack(
                          children: [
                            Container(
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(horizontal: _width * 0.05),
                                padding: EdgeInsets.symmetric(vertical: _height * 0.025),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 6.0,
                                          //spreadRadius: 1,
                                          offset: Offset(0, 0)
                                      )
                                    ]
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      ImageUtils.shippingIcon3,
                                      height: _height * 0.04,
                                    ),
                                    SizedBox(width: _width * 0.04,),
                                    RichText(
                                      text: const TextSpan(
                                        text: 'Free Shipping / Free Return\n',
                                        style:
                                        TextStyle(
                                            fontSize: 16.0,
                                            color: homeBoxColor,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: poppinsMedium
                                        ),
                                        children:  <TextSpan>[
                                          TextSpan(
                                              text: 'For all orders above\$99',
                                              style:
                                              TextStyle(
                                                  height: 1.2,
                                                  fontSize: 13.0,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.normal,
                                                  fontFamily: poppinsRegular
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                            ),

                            Positioned(
                              top: _height * 0.0275,
                              left: _width * 0,
                              child: Container(
                                // alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    vertical: _height * 0.0025, horizontal: _width * 0.025
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 1,
                                          spreadRadius: 1,
                                          offset: Offset(0, 3)
                                      )
                                    ]
                                ),
                                child: Center(
                                    child:
                                    Image.asset(
                                      ImageUtils.backIcon,
                                      height: _height * 0.03,
                                    )
                                ),
                              ),
                            ),

                            Positioned(
                              top: _height * 0.0275,
                              right: _width * 0,
                              child: Container(
                                // alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    vertical: _height * 0.0025, horizontal: _width * 0.025
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 1,
                                          spreadRadius: 1,
                                          offset: Offset(0, 3)
                                      )
                                    ]
                                ),
                                child: Center(
                                    child:
                                    Image.asset(
                                      ImageUtils.backIcon,
                                      height: _height * 0.03,
                                    )
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: _height * 0.02,),
                        // SizedBox(
                        //   height: 240,
                        //   child: PageView.builder(
                        //     controller:
                        //     controller.verticalControllerElectronics,
                        //     scrollDirection: Axis.horizontal,
                        //     // itemCount: pages.length,
                        //     itemBuilder: (_, index) {
                        //       return FractionallySizedBox(
                        //         // widthFactor: 1 /
                        //         //     verticalControllerElectronics
                        //         //         .viewportFraction,
                        //         child: categoriesList[index],
                        //       );
                        //     },
                        //     itemCount: categoriesList.length,
                        //   ),
                        // ),
                        //
                        // SmoothPageIndicator(
                        //   controller: controller.verticalControllerElectronics,
                        //   // PageController
                        //   axisDirection: Axis.horizontal,
                        //   count: categoriesList.length,
                        //   effect: const WormEffect(
                        //       dotColor: Colors.red,
                        //       activeDotColor: Colors.black,
                        //       dotWidth: 10,
                        //       dotHeight: 10,
                        //     type: WormType.thinUnderground,
                        //   ),
                        //
                        //   // your preferred effect
                        //   onDotClicked: (index) {
                        //     print(index);
                        //   },
                        // ),


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
                            childAspectRatio: 0.68,
                            crossAxisSpacing: 25.0,
                            mainAxisSpacing: 25.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            // Build each container
                            return  Container(
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
                                          ImageUtils.dealItem,
                                        ),
                                        fit: BoxFit.cover,
                                        )
                                      ),
                                    ),
                                    SizedBox(height: _height * 0.01,),
                                    TextWidget(
                                      textTitle: 'Microwave Oven',
                                      fontFamily: montserratSemiBold,
                                      fontSize: 11.0,
                                      color: Colors.black,
                                    ),
                                    SizedBox(height: _height * 0.005,),
                                    TextWidget(
                                      textTitle: '\$75.00',
                                      fontFamily: montserratSemiBold,
                                      fontSize: 11.0,
                                      color: homeBoxColor,
                                    ),
                                    SizedBox(height: _height * 0.005,),
                                    RatingWidget(
                                      initialRating: 4.5,
                                    ),
                                    SizedBox(height: _height * 0.008,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomGridButton(
                                          onTap: (){},
                                          title: 'Add to cart',
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: _width * 0.025, vertical: _height * 0.005),
                                          decoration: BoxDecoration(
                                              color: homeBoxColor,
                                              borderRadius: BorderRadius.circular(_width * 0.01)
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.favorite_border_outlined, size: _height * 0.015,
                                            color: Colors.white,
                                            )
                                          ),
                                        )
                                      ],
                                    ),

                                    Row(
                                      children: [

                                      ],
                                    )
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

                            );
                          },
                        ),
                        SizedBox(height: _height * 0.015,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ShowMoreButton(
                              onTap: (){},
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
                            childAspectRatio: 0.68,
                            crossAxisSpacing: 25.0,
                            mainAxisSpacing: 25.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            // Build each container
                            return  Container(
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
                                            ImageUtils.dealItem,
                                          ),
                                            fit: BoxFit.cover,
                                          )
                                      ),
                                    ),
                                    SizedBox(height: _height * 0.01,),
                                    TextWidget(
                                      textTitle: 'Microwave Oven',
                                      fontFamily: montserratSemiBold,
                                      fontSize: 11.0,
                                      color: Colors.black,
                                    ),
                                    SizedBox(height: _height * 0.004,),
                                    TextWidget(
                                      textTitle: '\$75.00',
                                      fontFamily: montserratSemiBold,
                                      fontSize: 11.0,
                                      color: homeBoxColor,
                                    ),
                                    SizedBox(height: _height * 0.005,),
                                    RatingWidget(
                                      initialRating: 4.5,
                                    ),
                                    SizedBox(height: _height * 0.008,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomGridButton(
                                          onTap: (){},
                                          title: 'Add to cart',
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: _width * 0.025, vertical: _height * 0.005),
                                          decoration: BoxDecoration(
                                              color: homeBoxColor,
                                              borderRadius: BorderRadius.circular(_width * 0.01)
                                          ),
                                          child: Center(
                                              child: Icon(
                                                Icons.favorite_border_outlined, size: _height * 0.015,
                                                color: Colors.white,
                                              )
                                          ),
                                        )
                                      ],
                                    ),

                                    Row(
                                      children: [

                                      ],
                                    )
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

                            );
                          },
                        ),
                        SizedBox(height: _height * 0.015,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ShowMoreButton(
                                onTap: (){},
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
                            childAspectRatio: 0.68,
                            crossAxisSpacing: 25.0,
                            mainAxisSpacing: 25.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            // Build each container
                            return  Container(
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
                                            ImageUtils.newArrival,
                                          ),
                                            fit: BoxFit.cover,
                                          )
                                      ),
                                    ),
                                    SizedBox(height: _height * 0.01,),
                                    TextWidget(
                                      textTitle: 'T-Shirts',
                                      fontFamily: montserratSemiBold,
                                      fontSize: 11.0,
                                      color: Colors.black,
                                    ),
                                    SizedBox(height: _height * 0.004,),
                                    TextWidget(
                                      textTitle: '\$75.00',
                                      fontFamily: montserratSemiBold,
                                      fontSize: 11.0,
                                      color: homeBoxColor,
                                    ),
                                    SizedBox(height: _height * 0.005,),
                                    RatingWidget(
                                      initialRating: 4.5,
                                    ),
                                    SizedBox(height: _height * 0.008,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomGridButton(
                                          onTap: (){},
                                          title: 'Add to cart',
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: _width * 0.025, vertical: _height * 0.005),
                                          decoration: BoxDecoration(
                                              color: homeBoxColor,
                                              borderRadius: BorderRadius.circular(_width * 0.01)
                                          ),
                                          child: Center(
                                              child: Icon(
                                                Icons.favorite_border_outlined, size: _height * 0.015,
                                                color: Colors.white,
                                              )
                                          ),
                                        )
                                      ],
                                    ),

                                    Row(
                                      children: [

                                      ],
                                    )
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

                            );
                          },
                        ),
                        SizedBox(height: _height * 0.015,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ShowMoreButton(
                                onTap: (){},
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
                            childAspectRatio: 0.68,
                            crossAxisSpacing: 25.0,
                            mainAxisSpacing: 25.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            // Build each container
                            return  Container(
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
                                        ImageUtils.promotionPic
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

                            );
                          },
                        ),
                        SizedBox(height: _height * 0.015,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ShowMoreButton(
                                onTap: (){},
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
                            childAspectRatio: 0.68,
                            crossAxisSpacing: 25.0,
                            mainAxisSpacing: 25.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            // Build each container
                            return  Container(
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
                                             ImageUtils.topSeller
                                         ),
                                             fit: BoxFit.contain
                                         )
                                     ),
                                   ),
                                   SizedBox(height: _height * 0.015,),
                                   TextWidget(
                                     textTitle: 'Pascal Shop',
                                     fontSize: 12.0,
                                     fontFamily: montserratSemiBold,
                                     //fontWeight: FontWeight.w600,
                                     color: Colors.black,
                                   ),
                                   SizedBox(height: _height * 0.005,),
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

                            );
                          },
                        ),
                        SizedBox(height: _height * 0.015,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ShowMoreButton(
                                onTap: (){},
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
                            childAspectRatio: 0.68,
                            crossAxisSpacing: 25.0,
                            mainAxisSpacing: 25.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            // Build each container
                            return  Container(
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
                                            ImageUtils.topBrands
                                        ),
                                            fit: BoxFit.contain
                                        )
                                    ),
                                  ),
                                  SizedBox(height: _height * 0.015,),
                                  TextWidget(
                                    textTitle: 'Nike',
                                    fontSize: 12.0,
                                    fontFamily: montserratSemiBold,
                                    //fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: _height * 0.005,),
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

                            );
                          },
                        ),
                        SizedBox(height: _height * 0.015,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ShowMoreButton(
                                onTap: (){},
                                title: 'Show more',
                              )
                            ]
                        ),
                        SizedBox(height: _height * 0.025,),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
                          padding: EdgeInsets.symmetric(horizontal: _width * 0.06, vertical: _height * 0.04),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                              ImageUtils.shippingImage
                            ),
                            fit: BoxFit.cover
                            )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Moyenxpress\n',
                                  style:
                                  TextStyle(
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: poppinsBold
                                  ),
                                  children:  <TextSpan>[
                                    TextSpan(
                                        text: 'Shipping',
                                        style:
                                        TextStyle(
                                          height: 1.1,
                                            fontSize: 42.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: poppinsBold
                                        )
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: _height * 0.02,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    ImageUtils.shippingIcon1,
                                    height: _height * 0.03,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: _width * 0.0225,),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Ship With Moyen Xpress\n',
                                     // style: DefaultTextStyle.of(context).style,
                                        style:
                                        TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: montserratBold
                                        ),
                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: 'Use Moyen Xpress as your shipping\n',
                                            style:
                                        TextStyle(
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.normal,
                                          fontFamily: montserratMedium
                                        )
                                        ),
                                        TextSpan(
                                            text: 'target & get exclusive discounts.',
                                            style:
                                            TextStyle(
                                              fontSize: 10.0,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: montserratMedium
                                            )
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),

                              SizedBox(height: _height * 0.02,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    ImageUtils.shippingIcon2,
                                    height: _height * 0.035,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: _width * 0.018,),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Send Anything, Anywhere\n',
                                      style:
                                      TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: montserratBold
                                      ),
                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: 'Use Moyen Xpress shipping & send\n',
                                            style:
                                            TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: montserratMedium
                                            )
                                        ),
                                        TextSpan(
                                            text: 'anything, anywhere in the world.',
                                            style:
                                            TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: montserratMedium
                                            )
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: _height * 0.025,),

                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: _width * 0.05),
                              padding: EdgeInsets.symmetric(vertical: _height * 0.025),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        blurRadius: 6.0,
                                        //spreadRadius: 1,
                                        offset: Offset(0, 0)
                                    )
                                  ]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    ImageUtils.termsIcon,
                                    height: _height * 0.04,
                                  ),
                                  SizedBox(width: _width * 0.04,),
                                  TextWidget(
                                    textTitle: 'Terms & Conditions',
                                    fontFamily: poppinsMedium,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    color: homeBoxColor,

                                  ),
                                ],
                              )
                            ),

                            Positioned(
                              top: _height * 0.0275,
                              left: _width * 0,
                              child: Container(
                                // alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    vertical: _height * 0.0025, horizontal: _width * 0.025
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 1,
                                          spreadRadius: 1,
                                          offset: Offset(0, 3)
                                      )
                                    ]
                                ),
                                child: Center(
                                  child:
                                  Image.asset(
                                    ImageUtils.backIcon,
                                    height: _height * 0.03,
                                  )
                                ),
                              ),
                            ),

                            Positioned(
                              top: _height * 0.0275,
                              right: _width * 0,
                              child: Container(
                                // alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    vertical: _height * 0.0025, horizontal: _width * 0.025
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 1,
                                          spreadRadius: 1,
                                          offset: Offset(0, 3)
                                      )
                                    ]
                                ),
                                child: Center(
                                    child:
                                    Image.asset(
                                      ImageUtils.backIcon,
                                      height: _height * 0.03,
                                    )
                                ),
                              ),
                            )
                          ],
                        ),

                        SizedBox(height: _height * 0.045,),


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
              );
    

  }

  Widget? CustomListView(BuildContext context){
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: _height * 0.140,
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
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                            ),
                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: TextWidget(
                          textTitle: categoriesList[index]["name"],
                          fontFamily: montserratRegular,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          overFlow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ));
          }),
    );
  }
}
