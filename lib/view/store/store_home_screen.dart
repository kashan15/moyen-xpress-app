import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/components/custom_dialog.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/view/orders/shipping%20order/shipping_orders.dart';
import '../../components/custom_grid_button.dart';
import '../../components/custom_richtext.dart';
import '../../components/rating_widget.dart';
import '../../controller/store_home_controller.dart';
import '../../controller/store_screen_controller.dart';
import '../../utils/font_utils.dart';
import '../../utils/route_utils.dart';
import '../../utils/theme.dart';


class StoreHome extends GetView<StoreHomeController> {
  StoreHome({super.key,

  });

  bool willPop = true;
  int select = 0;

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

  List storeList = [
    {
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },
    {
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },{
      "image": ImageUtils.topSeller,
      "name": "Pascal Shop"
    },
  ];

  List topSelling = [
    {
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },
    {
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },{
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },{
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },
  ];

  List newArrivals = [
    {
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },
    {
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },{
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },{
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },
  ];
  List featuredProducts = [
    {
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },
    {
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },{
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },{
      "image": ImageUtils.dealItem,
      "name": "Microwave Oven",
    },
  ];

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;
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
          appBar: CustomAppbar1(
            heading: 'Store Home',
          ),
          body: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: _height * 0.015,),

                /// Banner
                Container(
                  height: Get.height * 0.2 ,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: _width * 0.03
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          _width * 0.02
                      ),
                      image:  const DecorationImage(image: AssetImage(
                          ImageUtils.storeHomeBanner
                      ),
                          fit: BoxFit.cover
                      )
                  ),
                ),


                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: Get.height * 0.01,
                    horizontal: Get.width * 0.06
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
                          height: Get.height * 0.085,
                          width: Get.width * 0.225,
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
                                    ImageUtils.topSeller
                                ),
                                alignment: Alignment.center,
                                fit: BoxFit.contain,
                                // ),
                              ),
                            ),
                          )
                      ),
                      SizedBox(width: _width * 0.025,),
                      Expanded(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: Get.height * 0.01,),
                            TextWidget(
                              textTitle: 'Pascal Shop',
                              color: Colors.black,
                              fontSize: _height * 0.015,
                              fontFamily: poppinsSemiBold,
                            ),
                            SizedBox(height: Get.height * 0.0025,),
                            RatingWidget(
                              initialRating: 4.5,
                            ),
                            SizedBox(height: Get.height * 0.005,),
                            TextWidget(
                              textTitle: '1565 Woodington Circle, Lawrenceville, GA, USA',
                              color: Colors.black,
                              fontSize: _height * 0.0125,
                              fontFamily: poppinsMedium,
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

                SizedBox(height: _height * 0.025,),
                Row(
                    children:[
                      SizedBox(width: _width * 0.04,),
                      TextWidget(
                        textTitle: 'Top Selling',
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
                  itemCount: topSelling.length, // Number of containers
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
                      onTap: (){

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
                                        topSelling[index]['image']
                                      //ImageUtils.dealItem
                                    ),
                                      fit: BoxFit.contain,
                                    )
                                ),
                              ),
                              SizedBox(height: _height * 0.01,),
                              TextWidget1(
                                //textTitle: 'Microwave Oven',
                                textTitle: topSelling[index]['name'],
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
                          Get.toNamed(kShowMoreScreen2);
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
                        textTitle: 'New Arrivals',
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
                  itemCount: topSelling.length, // Number of containers
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
                      onTap: (){

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
                                        topSelling[index]['image']
                                      //ImageUtils.dealItem
                                    ),
                                      fit: BoxFit.contain,
                                    )
                                ),
                              ),
                              SizedBox(height: _height * 0.01,),
                              TextWidget1(
                                //textTitle: 'Microwave Oven',
                                textTitle: topSelling[index]['name'],
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
                          Get.toNamed(kShowMoreScreen2);
                        },
                        title: 'Show more',
                      )
                    ]
                ),
                SizedBox(height: _height * 0.035,),


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
                        textTitle: 'Featured Products',
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
                  itemCount: topSelling.length, // Number of containers
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
                      onTap: (){

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
                                        topSelling[index]['image']
                                      //ImageUtils.dealItem
                                    ),
                                      fit: BoxFit.contain,
                                    )
                                ),
                              ),
                              SizedBox(height: _height * 0.01,),
                              TextWidget1(
                                //textTitle: 'Microwave Oven',
                                textTitle: topSelling[index]['name'],
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
                          Get.toNamed(kShowMoreScreen2);
                        },
                        title: 'Show more',
                      )
                    ]
                ),
                SizedBox(height: _height * 0.025,),

                SizedBox(height: _height * 0.05,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


