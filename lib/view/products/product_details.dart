import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/custom_richtext.dart';
import 'package:moyen_xpress_app/components/custom_textfield.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/product_details_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:readmore/readmore.dart';

import '../../components/custom_textfield1.dart';
import '../../utils/route_utils.dart';

class ProductDetails extends GetView<ProductDetailsController> {
  int? a;
 ProductDetails({super.key,
   this.a
});

 // bool tap1 = false;
 //  bool tap2 = false;
 //  bool tap3 = false;
 //  bool tap4 = false;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    controller.globalContext = context;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: _height * 0.05,),
              Padding(padding: EdgeInsets.symmetric(horizontal: _width * 0.04),
              child: Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: (){
                      Get.back();
                      },
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
                      contentPadding:
                      const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 10.0
                      ),
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
                      ),
                      Positioned(
                          top: _height * 0.25,
                          left: _width * 0.20,
                          child: GestureDetector(
                            onTap: (){
                              controller.tap1 = true;
                              controller.tap2 = false;
                              controller.tap3 = false;
                              controller.tap4 = false;
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: _width * 0.06,
                              vertical: _height * 0.03
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(_width * 0.015),
                                border: Border.all(
                                  color: controller.tap1 == true ?
                                      homeBoxColor :
                                      Colors.white,
                                  width: 2
                                ),
                                image: const DecorationImage(image: AssetImage(
                                  ImageUtils.bag,
                                ),
                                fit: BoxFit.contain
                                )
                              ),
                            )
                          )
                      ),
                      Positioned(
                          top: _height * 0.25,
                          left: _width * 0.35,
                          child: GestureDetector(
                              onTap: (){
                                controller.tap1 = false;
                                controller.tap2 = true;
                                controller.tap3 = false;
                                controller.tap4 = false;
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: _width * 0.06,
                                    vertical: _height * 0.03
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(_width * 0.015),
                                    border: Border.all(
                                        color: controller.tap2 == true ?
                                        homeBoxColor :
                                        Colors.white,
                                        width: 2
                                    ),
                                    image: const DecorationImage(image: AssetImage(
                                      ImageUtils.bag,
                                    ),
                                        fit: BoxFit.contain
                                    )
                                ),
                              )
                          )
                      ),
                      Positioned(
                          top: _height * 0.25,
                          left: _width * 0.50,
                          child: GestureDetector(
                              onTap: (){
                                controller.tap1 = false;
                                controller.tap2 = false;
                                controller.tap3 = true;
                                controller.tap4 = false;
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: _width * 0.06,
                                    vertical: _height * 0.03
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(_width * 0.015),
                                    border: Border.all(
                                        color: controller.tap3 == true ?
                                        homeBoxColor :
                                        Colors.white,
                                        width: 2
                                    ),
                                    image: const DecorationImage(image: AssetImage(
                                      ImageUtils.bag,
                                    ),
                                        fit: BoxFit.contain
                                    )
                                ),
                              )
                          )
                      ),
                      Positioned(
                          top: _height * 0.25,
                          left: _width * 0.65,
                          child: GestureDetector(
                              onTap: (){
                                controller.tap1 = false;
                                controller.tap2 = false;
                                controller.tap3 = false;
                                controller.tap4 = true;
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: _width * 0.06,
                                    vertical: _height * 0.03
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(_width * 0.015),
                                    border: Border.all(
                                        color: controller.tap4 == true ?
                                        homeBoxColor :
                                        Colors.white,
                                        width: 2
                                    ),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                      ImageUtils.bag,
                                    ),
                                        fit: BoxFit.contain
                                    )
                                ),
                              )
                          )
                      ),

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
                          GestureDetector(
                            onTap: (){
                              Get.toNamed(kChatScreen);
                            },
                            child: Container(
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
                                    height: _height * 0.025,
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
                            ),
                          )
                      ),
                    ],
                  ),



                ],
              ),
              SizedBox(height: _height * 0.01,),
              SizedBox(
                height: _height * 0.0275,
                child: TabBar(
                  //padding: EdgeInsets.symmetric(horizontal: _width * 0.035),
                  controller: controller.tabController,
                  labelColor: homeBoxColor,
                  indicatorColor: homeBoxColor,
                  isScrollable: true,
                  indicatorPadding: EdgeInsets.zero,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.5,

                  // controller: controller.tabController,
                  // indicatorSize: TabBarIndicatorSize.label,
                  // isScrollable: true,
                  // padding: EdgeInsets.zero,
                  // indicatorPadding: EdgeInsets.zero,
                  // labelPadding: EdgeInsets.zero,
                  // indicatorColor: homeBoxColor,
                  // labelColor: homeBoxColor,
                  // indicatorWeight: 4,

                  //labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                  labelStyle: TextStyle(
                    fontSize: _height * 0.01425
                  ),
                  tabs: const [
                    Tab(
                        text: 'Description',
                    ),
                    Tab(
                        text: 'About'
                    ),
                    Tab(
                        text: 'Reviews & Rating'
                    ),
                    Tab(
                        text: 'Customer Q&A'
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0), // Adjust spacing as needed
              SizedBox(
                height: _height * 0.2,
                child: TabBarView(
                  controller: controller.tabController,
                  children: [
                    // Add your tab views here
                    Container(
                      // height: _height * 0.05,
                        color: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
                      child: const ReadMoreText(
                        'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.' ,
                        trimLines: 6,
                        textScaleFactor: 1,
                        colorClickableText: Colors.black,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Show less',
                        lessStyle: TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.bold,
                          color: homeBoxColor,
                          // textBaseline: TextBaseline.alphabetic
                        ),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.5
                        ),
                        moreStyle: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: homeBoxColor,
                        ),
                      ),
                      // TextWidget(
                      //   textTitle:
                      //   'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that.......Read More',
                      //   color: Colors.black,
                      //   fontFamily: poppinsRegular,
                      //   fontSize: _height * 0.011,
                      //   maxLines: 6,
                      //   overFlow: TextOverflow.ellipsis,
                      // ),
                    ),
                    Container(
                      // height: _height * 0.05,
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
                      child: const ReadMoreText(
                        'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.' ,
                        trimLines: 6,
                        textScaleFactor: 1,
                        colorClickableText: Colors.black,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Show less',
                        lessStyle: TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.bold,
                          color: homeBoxColor,
                          // textBaseline: TextBaseline.alphabetic
                        ),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.5
                        ),
                        moreStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: homeBoxColor,
                        ),
                      ),
                      // TextWidget(
                      //   textTitle:
                      //   'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that.......Read More',
                      //   color: Colors.black,
                      //   fontFamily: poppinsRegular,
                      //   fontSize: _height * 0.011,
                      //   maxLines: 6,
                      //   overFlow: TextOverflow.ellipsis,
                      // ),
                    ),
                    Container(
                      // height: _height * 0.05,
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
                      child: const ReadMoreText(
                        'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.' ,
                        trimLines: 6,
                        textScaleFactor: 1,
                        colorClickableText: Colors.black,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Show less',
                        lessStyle: TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.bold,
                          color: homeBoxColor,
                          // textBaseline: TextBaseline.alphabetic
                        ),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.5
                        ),
                        moreStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: homeBoxColor,
                        ),
                      ),
                      // TextWidget(
                      //   textTitle:
                      //   'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that.......Read More',
                      //   color: Colors.black,
                      //   fontFamily: poppinsRegular,
                      //   fontSize: _height * 0.011,
                      //   maxLines: 6,
                      //   overFlow: TextOverflow.ellipsis,
                      // ),
                    ),
                    Container(
                      // height: _height * 0.05,
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
                      child: const ReadMoreText(
                        'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.' ,
                        trimLines: 6,
                        textScaleFactor: 1,
                        colorClickableText: Colors.black,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Show less',
                        lessStyle: TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.bold,
                          color: homeBoxColor,
                          // textBaseline: TextBaseline.alphabetic
                        ),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.5
                        ),
                        moreStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: homeBoxColor,
                        ),
                      ),
                      // TextWidget(
                      //   textTitle:
                      //   'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that.......Read More',
                      //   color: Colors.black,
                      //   fontFamily: poppinsRegular,
                      //   fontSize: _height * 0.011,
                      //   maxLines: 6,
                      //   overFlow: TextOverflow.ellipsis,
                      // ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: _height * 0.01,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
                height: _height * 0.055 ,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children:[
                    Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        textTitle: 'Discount Price:',
                        color: Colors.black,
                        fontSize: _height * 0.015,
                        fontFamily: poppinsRegular,
                      ),

                      CustomRichText(
                        textSpan1: '\$37.39',
                        color1: homeBoxColor,
                        fontWeight1: FontWeight.bold,
                        fontSize1: _height * 0.02,
                        fontFamily1: poppinsSemiBold,
                        textSpan2: ' /Pieces',
                        color2: Colors.black,
                        fontWeight2: FontWeight.normal,
                        fontSize2: _height * 0.010,
                        fontFamily2: poppinsRegular,
                      )
                    ],
                  ),
                    SizedBox(width: _width * 0.025,),
                    GestureDetector(
                      onTap: (){
                        showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(_width * 0.06)
                              )
                            ),
                            builder: (BuildContext context){
                              return customModalSheet(context);
                            }
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: _width * 0.02,
                          top: _height * 0.004,
                          bottom: _height * 0.0055
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: _width * 0.07,
                          // vertical: _height * 0.005,
                        ),
                        decoration: BoxDecoration(
                          color: cartBox,
                          borderRadius: BorderRadius.circular(_width * 0.015)
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: _width * 0.01,),
                    GestureDetector(
                      onTap: (){
                        Get.toNamed(kMyCartScreen);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: _width * 0.005,
                            top: _height * 0.004,
                            bottom: _height * 0.0055
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: _width * 0.140,
                          // vertical: _height * 0.005,
                        ),
                        decoration: BoxDecoration(
                            color: buyNow,
                            borderRadius: BorderRadius.circular(_width * 0.015)
                        ),
                        child: Center(
                          child: TextWidget(
                            textTitle: 'Buy Now',
                            color: Colors.white,
                            fontSize: _height * 0.0155,
                            fontFamily: poppinsRegular,
                          )
                        ),
                      ),
                    ),
                ]),
              )

            ],
          ),
        ),
      ),
    );
  }

  /// Custom Modal BottomSheet
  Widget customModalSheet(BuildContext context){
    controller.globalContext = context;
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: _height * 0.5,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: _height * 0.02,),
          Image.asset(
            ImageUtils.cartCheckIcon,
            height: _height * 0.045,
          ),
          SizedBox(height: _height * 0.005,),
          TextWidget(
            textTitle: 'Item added to your cart!',
            color: Colors.black,
            fontSize: _height * 0.02,
            fontFamily: poppinsSemiBold,
          ),
          SizedBox(height: _height * 0.02,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: _width * 0.2),
            padding: EdgeInsets.symmetric(horizontal: _width * 0.05, vertical: _height * 0.02),
            height: _height * 0.2,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              image:  DecorationImage(image: AssetImage(
                ImageUtils.bag
              ),
              fit: BoxFit.contain
              )
            ),
          ),
          SizedBox(height: _height * 0.005,),
          TextWidget(
            textTitle: 'Women Shoulder Handbag',
            color: Colors.black,
            fontSize: _height * 0.02,
            fontFamily: poppinsSemiBold,
          ),
      SizedBox(height: _height * 0.01,),
          CustomRichText(
            textSpan1: '\$37.39',
            color1: homeBoxColor,
            fontWeight1: FontWeight.bold,
            fontSize1: _height * 0.025,
            fontFamily1: poppinsSemiBold,
            textSpan2: ' /Pieces',
            color2: Colors.black,
            fontWeight2: FontWeight.normal,
            fontSize2: _height * 0.012,
            fontFamily2: poppinsRegular,
          ),
          const Spacer(),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              isSelected: false,
              margin: EdgeInsets.zero,
              width: _width * 0.4,
              onTap: (){
                Get.back();
              },
              padding: EdgeInsets.symmetric(
                  // horizontal: _width * 0.05,
                  vertical: _height * 0.0125
              ),
              title: 'Back To Shopping',
              color: backToShopping,
              textColor: Colors.white,
              fontSize: _height * 0.0175,
              fontFamily: poppinsRegular,
              borderRadius: _width * 0.012,
            ),

            CustomButton(
              isSelected: false,
              margin: EdgeInsets.zero,
              width: _width * 0.4,
              padding: EdgeInsets.symmetric(
                  // horizontal: _width * 0.05,
                  vertical: _height * 0.0125
              ),
              title: 'My Cart',
              color: buyNow,
              textColor: Colors.white,
              fontSize: _height * 0.0175,
              fontFamily: poppinsRegular,
              borderRadius: _width * 0.012,
            ),

          ],
            ),
          SizedBox(height: _height * 0.02,),

        ],
      ),
    );
  }
}



// class ProductDetails extends StatefulWidget {
//   const ProductDetails({Key? key}) : super(key: key);
//
//   @override
//   State<ProductDetails> createState() => _ProductDetailsState();
// }
//
// class _ProductDetailsState extends State<ProductDetails> {
//
//   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
//
//   TextEditingController searchController = TextEditingController();
//
//   TabController? tabController;
//
//   bool tap1 = false;
//   bool tap2 = false;
//   bool tap3 = false;
//   bool tap4 = false;
//
//   @override
//   Widget build(BuildContext context) {
//     double _height = MediaQuery.of(context).size.height;
//     double _width = MediaQuery.of(context).size.width;
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               SizedBox(height: _height * 0.05,),
//               Padding(padding: EdgeInsets.symmetric(horizontal: _width * 0.04),
//                 child: Row(
//                   children: [
//                     IconButton(
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                         onPressed: (){},
//                         icon: Icon(Icons.arrow_back_ios,
//                           size: _height * 0.025,
//                         )
//                     ),
//                     SizedBox(width: _width * 0.06,),
//                     /// Search Textfield
//                     Container(
//                         height: _height * 0.040,
//                         width: _width * 0.6,
//                         // padding: EdgeInsets.symmetric(
//                         //   horizontal: _width * 0.0,
//                         //   vertical: _height * 0.0,
//                         // ),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(_width * 0.01),
//                           border: Border.all(
//                               color: Colors.grey
//                           ),
//                           // boxShadow: [
//                           //   BoxShadow(
//                           //       color: Colors.grey.withOpacity(0.5),
//                           //       blurRadius: 1,
//                           //       spreadRadius: 1,
//                           //       offset: Offset(0, 3)
//                           //   )
//                           // ]
//                         ),
//                         child: CustomTextField1(
//                           hintText: 'Search',
//                           hintFontSize: _height * 0.015,
//                           fontSize: _height * 0.015,
//                           suffixIcon: Image.asset(ImageUtils.searchIcon),
//                           controller: searchController,
//                           onChanged: (value) {
//                             print(value);
//                           },
//                         )
//                     ),
//                     SizedBox(width: _width * 0.04,),
//                     IconButton(
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                         onPressed: (){},
//                         icon: Icon(Icons.share_outlined,
//                           size: _height * 0.025,
//                         )
//                     ),
//                     SizedBox(width: _width * 0.04,),
//                     IconButton(
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                         onPressed: (){},
//                         icon: Icon(Icons.shopping_cart_outlined,
//                           size: _height * 0.025,
//                         )
//                     ),
//
//                   ],
//                 ),
//               ),
//               SizedBox(height: _height * 0.05,),
//               Column(
//                 children: [
//                   Stack(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.symmetric(horizontal: _width * 0.06),
//                         padding: EdgeInsets.symmetric(horizontal: _width * 0.04, vertical: _height * 0.04),
//                         decoration: BoxDecoration(
//                             color: Colors.grey.withOpacity(0.15),
//                             borderRadius: BorderRadius.circular(_width * 0.02)
//                         ),
//                         height: _height * 0.325,
//                         width: double.infinity,
//                       ),
//                       Positioned(
//                         top: _height * 0.01,
//                         left: _width * 0.24,
//                         child: Container(
//                           height: _height * 0.225,
//                           width: _width * 0.5,
//                           decoration: const BoxDecoration(
//                               color: Colors.transparent,
//                               image: DecorationImage(image: AssetImage(
//                                   ImageUtils.bag
//                               ),
//                                   fit: BoxFit.contain
//                               )
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                           top: _height * 0.025,
//                           left: _width * 0.8,
//                           child: GestureDetector(
//                             child: Image.asset(
//                                 ImageUtils.likeIcon
//                             ),
//                           )
//                       ),
//                       Positioned(
//                           top: _height * 0.025,
//                           left: _width * 0.865,
//                           child: GestureDetector(
//                             child: Image.asset(
//                                 ImageUtils.favIcon
//                             ),
//                           )
//                       ),
//                       Positioned(
//                           top: _height * 0.25,
//                           left: _width * 0.20,
//                           child: GestureDetector(
//                               onTap: (){
//                                 tap1 == true;
//                                 tap2 == false;
//                                 tap3 == false;
//                                 tap4 == false;
//                               },
//                               child: Container(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: _width * 0.06,
//                                     vertical: _height * 0.03
//                                 ),
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(_width * 0.015),
//                                     border: Border.all(
//                                         color: tap1 == true ?
//                                         homeBoxColor :
//                                         Colors.white,
//                                         width: 1
//                                     ),
//                                     image: const DecorationImage(image: AssetImage(
//                                       ImageUtils.bag,
//                                     ),
//                                         fit: BoxFit.contain
//                                     )
//                                 ),
//                               )
//                           )
//                       ),
//                       Positioned(
//                           top: _height * 0.25,
//                           left: _width * 0.35,
//                           child: GestureDetector(
//                               onTap: (){
//                                 tap1 == false;
//                                 tap2 == true;
//                                 tap3 == false;
//                                 tap4 == false;
//                               },
//                               child: Container(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: _width * 0.06,
//                                     vertical: _height * 0.03
//                                 ),
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(_width * 0.015),
//                                     border: Border.all(
//                                         color: tap2 == true ?
//                                         homeBoxColor :
//                                         Colors.white,
//                                         width: 1
//                                     ),
//                                     image: const DecorationImage(image: AssetImage(
//                                       ImageUtils.bag,
//                                     ),
//                                         fit: BoxFit.contain
//                                     )
//                                 ),
//                               )
//                           )
//                       ),
//                       Positioned(
//                           top: _height * 0.25,
//                           left: _width * 0.50,
//                           child: GestureDetector(
//                               onTap: (){
//                                 tap1 == false;
//                                 tap2 == false;
//                                 tap3 == true;
//                                 tap4 == false;
//                               },
//                               child: Container(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: _width * 0.06,
//                                     vertical: _height * 0.03
//                                 ),
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(_width * 0.015),
//                                     border: Border.all(
//                                         color: tap3 == true ?
//                                         homeBoxColor :
//                                         Colors.white,
//                                         width: 1
//                                     ),
//                                     image: const DecorationImage(image: AssetImage(
//                                       ImageUtils.bag,
//                                     ),
//                                         fit: BoxFit.contain
//                                     )
//                                 ),
//                               )
//                           )
//                       ),
//                       Positioned(
//                           top: _height * 0.25,
//                           left: _width * 0.65,
//                           child: GestureDetector(
//                               onTap: (){
//                                 tap1 == false;
//                                 tap2 == false;
//                                 tap3 == false;
//                                 tap4 == true;
//                               },
//                               child: Container(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: _width * 0.06,
//                                     vertical: _height * 0.03
//                                 ),
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(_width * 0.015),
//                                     border: Border.all(
//                                         color: tap4 == true ?
//                                         homeBoxColor :
//                                         Colors.white,
//                                         width: 2
//                                     ),
//                                     image: const DecorationImage(
//                                         image: AssetImage(
//                                           ImageUtils.bag,
//                                         ),
//                                         fit: BoxFit.contain
//                                     )
//                                 ),
//                               )
//                           )
//                       ),
//
//                     ],
//                   ),
//                   SizedBox(height: _height * 0.02,),
//                   TextWidget(
//                     textTitle: 'Women Shoulder Handbag',
//                     fontWeight: FontWeight.w700,
//                     fontSize: _height * 0.025,
//                   ),
//                   SizedBox(height: _height * 0.01,),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset(
//                         ImageUtils.starIcon,
//                         height: _width * 0.08,
//                         color: homeBoxColor,
//                       ),
//                       // SizedBox(width: _width * 0.00,),
//                       TextWidget(
//                         textTitle: '4.7/5 (40)',
//                         fontWeight: FontWeight.w500,
//                         fontSize: _height * 0.015,
//                       ),
//                       SizedBox(width: _width * 0.025,),
//                       Image.asset(
//                         ImageUtils.likeIcon,
//                         height: _width * 0.05,
//                       ),
//                       SizedBox(width: _width * 0.01,),
//                       TextWidget(
//                         textTitle: '65',
//                         fontWeight: FontWeight.w500,
//                         fontSize: _height * 0.015,
//                       ),
//                       SizedBox(width: _width * 0.025,),
//                       Image.asset(
//                         ImageUtils.deliveryIcon,
//                         height: _width * 0.07,
//                       ),
//                       // SizedBox(width: _width * 0.01,),
//                       TextWidget(
//                         textTitle: '7 Days',
//                         fontWeight: FontWeight.w500,
//                         fontSize: _height * 0.015,
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: _height * 0.02,),
//                   Stack(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
//                         padding: EdgeInsets.symmetric(horizontal: _width * 0.04, vertical: _height * 0.02),
//                         width: double.infinity,
//                         height: _height * 0.08,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(_width * 0.02),
//                           gradient: const LinearGradient(
//                             colors: [
//                               Color(0xffE66B12),
//                               Color(0xffF3921F)
//                             ],
//                           ),
//                         ),
//
//                       ),
//                       Positioned(
//                         top: _height * 0.0175,
//                         left: _width * 0.06,
//                         child: CircleAvatar(
//                           radius: _width * 0.05,
//                           backgroundImage: AssetImage(ImageUtils.person1,),
//                         ),
//                       ),
//                       Positioned(
//                         top: _height * 0.0435,
//                         left: _width * 0.15,
//                         child: CircleAvatar(
//                           radius: _width * 0.01,
//                           backgroundColor: Colors.green,
//                         ),
//                       ),
//                       Positioned(
//                         top: _height * 0.025,
//                         left: _width * 0.2,
//                         child: TextWidget(
//                           textTitle: 'John Smith',
//                           color: Colors.white,
//                           fontWeight: FontWeight.w700,
//                           fontSize: _height * 0.0175,
//                         ),
//                       ),
//                       Positioned(
//                         top: _height * 0.0485,
//                         left: _width * 0.2,
//                         child: Image.asset(
//                           ImageUtils.starIcon,
//                           height: _height * 0.0125,
//                           // color: Colors.yellow,
//                         ),
//                       ),
//                       Positioned(
//                           top: _height * 0.0480,
//                           left: _width * 0.235,
//                           child:
//                           CustomRichText(
//                             textSpan1: '4.7/5',
//                             color1: Colors.white,
//                             fontWeight1: FontWeight.w700,
//                             fontSize1: _height * 0.011,
//                             fontFamily1: poppinsSemiBold,
//                             textSpan2: ' (Reviews)',
//                             color2: reviewColor,
//                             fontWeight2: FontWeight.normal,
//                             fontSize2: _height * 0.011,
//                             fontFamily2: poppinsRegular,
//                           )
//                       ),
//                       Positioned(
//                           top: _height * 0.0175,
//                           left: _width * 0.575,
//                           child:
//                           Container(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: _width * 0.02,
//                               vertical: _height * 0.0125,
//                             ),
//                             decoration: BoxDecoration(
//                                 color: Colors.black,
//                                 borderRadius: BorderRadius.circular(_width * 0.0125)
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Image.asset(
//                                   ImageUtils.chatIcon,
//                                   height: _height * 0.02,
//                                 ),
//                                 SizedBox(width: _width * 0.02,),
//                                 TextWidget(
//                                   textTitle: 'Chat With Seller',
//                                   color: Colors.white,
//                                   fontSize: _height * 0.015,
//                                   fontFamily: poppinsRegular,
//                                 )
//                               ],
//                             ),
//                           )
//                       ),
//                     ],
//                   ),
//
//
//
//                 ],
//               ),
//               SizedBox(height: _height * 0.01,),
//               SizedBox(
//                 height: _height * 0.0275,
//                 child: TabBar(
//                   //padding: EdgeInsets.symmetric(horizontal: _width * 0.035),
//                   controller: tabController,
//                   labelColor: homeBoxColor,
//                   indicatorColor: homeBoxColor,
//                   isScrollable: true,
//                   indicatorPadding: EdgeInsets.zero,
//                   unselectedLabelColor: Colors.black,
//                   indicatorSize: TabBarIndicatorSize.label,
//                   indicatorWeight: 1.5,
//
//                   // controller: controller.tabController,
//                   // indicatorSize: TabBarIndicatorSize.label,
//                   // isScrollable: true,
//                   // padding: EdgeInsets.zero,
//                   // indicatorPadding: EdgeInsets.zero,
//                   // labelPadding: EdgeInsets.zero,
//                   // indicatorColor: homeBoxColor,
//                   // labelColor: homeBoxColor,
//                   // indicatorWeight: 4,
//
//                   //labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
//                   labelStyle: TextStyle(
//                       fontSize: _height * 0.01425
//                   ),
//                   tabs: const [
//                     Tab(
//                       text: 'Description',
//                     ),
//                     Tab(
//                         text: 'About'
//                     ),
//                     Tab(
//                         text: 'Reviews & Rating'
//                     ),
//                     Tab(
//                         text: 'Customer Q&A'
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20.0), // Adjust spacing as needed
//               SizedBox(
//                 height: _height * 0.2,
//                 child: TabBarView(
//                   controller: tabController,
//                   children: [
//                     // Add your tab views here
//                     Container(
//                       // height: _height * 0.05,
//                       color: Colors.white,
//                       margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
//                       child: const ReadMoreText(
//                         'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.' ,
//                         trimLines: 6,
//                         textScaleFactor: 1,
//                         colorClickableText: Colors.black,
//                         trimMode: TrimMode.Line,
//                         trimCollapsedText: 'Read more',
//                         trimExpandedText: 'Show less',
//                         lessStyle: TextStyle(
//                           fontSize: 12.5,
//                           fontWeight: FontWeight.bold,
//                           color: homeBoxColor,
//                           // textBaseline: TextBaseline.alphabetic
//                         ),
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 12.5
//                         ),
//                         moreStyle: TextStyle(
//                           fontSize: 12.0,
//                           fontWeight: FontWeight.bold,
//                           color: homeBoxColor,
//                         ),
//                       ),
//                       // TextWidget(
//                       //   textTitle:
//                       //   'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that.......Read More',
//                       //   color: Colors.black,
//                       //   fontFamily: poppinsRegular,
//                       //   fontSize: _height * 0.011,
//                       //   maxLines: 6,
//                       //   overFlow: TextOverflow.ellipsis,
//                       // ),
//                     ),
//                     Container(
//                       // height: _height * 0.05,
//                       color: Colors.white,
//                       margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
//                       child: const ReadMoreText(
//                         'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.' ,
//                         trimLines: 6,
//                         textScaleFactor: 1,
//                         colorClickableText: Colors.black,
//                         trimMode: TrimMode.Line,
//                         trimCollapsedText: 'Read more',
//                         trimExpandedText: 'Show less',
//                         lessStyle: TextStyle(
//                           fontSize: 12.5,
//                           fontWeight: FontWeight.bold,
//                           color: homeBoxColor,
//                           // textBaseline: TextBaseline.alphabetic
//                         ),
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 12.5
//                         ),
//                         moreStyle: TextStyle(
//                           fontSize: 12.0,
//                           fontWeight: FontWeight.bold,
//                           color: homeBoxColor,
//                         ),
//                       ),
//                       // TextWidget(
//                       //   textTitle:
//                       //   'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that.......Read More',
//                       //   color: Colors.black,
//                       //   fontFamily: poppinsRegular,
//                       //   fontSize: _height * 0.011,
//                       //   maxLines: 6,
//                       //   overFlow: TextOverflow.ellipsis,
//                       // ),
//                     ),
//                     Container(
//                       // height: _height * 0.05,
//                       color: Colors.white,
//                       margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
//                       child: const ReadMoreText(
//                         'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.' ,
//                         trimLines: 6,
//                         textScaleFactor: 1,
//                         colorClickableText: Colors.black,
//                         trimMode: TrimMode.Line,
//                         trimCollapsedText: 'Read more',
//                         trimExpandedText: 'Show less',
//                         lessStyle: TextStyle(
//                           fontSize: 12.5,
//                           fontWeight: FontWeight.bold,
//                           color: homeBoxColor,
//                           // textBaseline: TextBaseline.alphabetic
//                         ),
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 12.5
//                         ),
//                         moreStyle: TextStyle(
//                           fontSize: 12.0,
//                           fontWeight: FontWeight.bold,
//                           color: homeBoxColor,
//                         ),
//                       ),
//                       // TextWidget(
//                       //   textTitle:
//                       //   'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that.......Read More',
//                       //   color: Colors.black,
//                       //   fontFamily: poppinsRegular,
//                       //   fontSize: _height * 0.011,
//                       //   maxLines: 6,
//                       //   overFlow: TextOverflow.ellipsis,
//                       // ),
//                     ),
//                     Container(
//                       // height: _height * 0.05,
//                       color: Colors.white,
//                       margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
//                       child: const ReadMoreText(
//                         'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.' ,
//                         trimLines: 6,
//                         textScaleFactor: 1,
//                         colorClickableText: Colors.black,
//                         trimMode: TrimMode.Line,
//                         trimCollapsedText: 'Read more',
//                         trimExpandedText: 'Show less',
//                         lessStyle: TextStyle(
//                           fontSize: 12.5,
//                           fontWeight: FontWeight.bold,
//                           color: homeBoxColor,
//                           // textBaseline: TextBaseline.alphabetic
//                         ),
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 12.5
//                         ),
//                         moreStyle: TextStyle(
//                           fontSize: 12.0,
//                           fontWeight: FontWeight.bold,
//                           color: homeBoxColor,
//                         ),
//                       ),
//                       // TextWidget(
//                       //   textTitle:
//                       //   'Introducing the exquisite Ladies Handbag, a fashion-forward accessory designed to elevate your style and keep your essentials organized with effortless sophistication. Crafted with meticulous attention to detail, this handbag is the epitome of elegance and functionality.The exterior of this handbag showcases a perfect blend of timeless charm and contemporary flair. It features a high-quality, durable material that.......Read More',
//                       //   color: Colors.black,
//                       //   fontFamily: poppinsRegular,
//                       //   fontSize: _height * 0.011,
//                       //   maxLines: 6,
//                       //   overFlow: TextOverflow.ellipsis,
//                       // ),
//                     ),
//                   ],
//                 ),
//               ),
//
//               SizedBox(height: _height * 0.01,),
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
//                 height: _height * 0.055 ,
//                 width: double.infinity,
//                 color: Colors.white,
//                 child: Row(
//                     children:[
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           TextWidget(
//                             textTitle: 'Discount Price:',
//                             color: Colors.black,
//                             fontSize: _height * 0.015,
//                             fontFamily: poppinsRegular,
//                           ),
//
//                           CustomRichText(
//                             textSpan1: '\$37.39',
//                             color1: homeBoxColor,
//                             fontWeight1: FontWeight.bold,
//                             fontSize1: _height * 0.02,
//                             fontFamily1: poppinsSemiBold,
//                             textSpan2: ' /Pieces',
//                             color2: Colors.black,
//                             fontWeight2: FontWeight.normal,
//                             fontSize2: _height * 0.010,
//                             fontFamily2: poppinsRegular,
//                           )
//                         ],
//                       ),
//                       SizedBox(width: _width * 0.025,),
//                       GestureDetector(
//                         child: Container(
//                           margin: EdgeInsets.only(
//                               left: _width * 0.02,
//                               top: _height * 0.004,
//                               bottom: _height * 0.0055
//                           ),
//                           padding: EdgeInsets.symmetric(
//                             horizontal: _width * 0.07,
//                             // vertical: _height * 0.005,
//                           ),
//                           decoration: BoxDecoration(
//                               color: cartBox,
//                               borderRadius: BorderRadius.circular(_width * 0.015)
//                           ),
//                           child: const Center(
//                             child: Icon(
//                               Icons.shopping_cart_outlined,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: _width * 0.01,),
//                       GestureDetector(
//                         child: Container(
//                           margin: EdgeInsets.only(
//                               left: _width * 0.005,
//                               top: _height * 0.004,
//                               bottom: _height * 0.0055
//                           ),
//                           padding: EdgeInsets.symmetric(
//                             horizontal: _width * 0.140,
//                             // vertical: _height * 0.005,
//                           ),
//                           decoration: BoxDecoration(
//                               color: buyNow,
//                               borderRadius: BorderRadius.circular(_width * 0.015)
//                           ),
//                           child: Center(
//                               child: TextWidget(
//                                 textTitle: 'Buy Now',
//                                 color: Colors.white,
//                                 fontSize: _height * 0.0155,
//                                 fontFamily: poppinsRegular,
//                               )
//                           ),
//                         ),
//                       ),
//                     ]),
//               )
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

