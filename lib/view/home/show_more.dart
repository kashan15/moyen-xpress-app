import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:like_button/like_button.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/rating_widget.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/categories_details_controller.dart';
import 'package:moyen_xpress_app/controller/show_more_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/view/products/product_details.dart';
import '../../components/custom_dialog.dart';
import '../../controller/home_controller.dart';
import '../../utils/theme.dart';

class ShowMoreScreen extends GetView<ShowMoreController> {
  final String? name;
  final String image1;
  final String? image;
  ShowMoreScreen({super.key,
    required this.image1,
    this.name,
    this.image
  });

  dynamic pages = [];
  dynamic pagesVertical = [];

  List itemList = [
    {
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },
    {
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },
    {
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },{
      "name": "Women Shoulder Handbag",
      "image": ImageUtils.bag
    },
  ];

  // List allProducts = [
  //   {
  //     "image": ImageUtils.products1,
  //     "name": "Bicycle"
  //   },
  //   {
  //     "image": ImageUtils.products2,
  //     "name": "Sneakers"
  //   },
  //   {
  //     "image": ImageUtils.products3,
  //     "name": "Swim Goggle"
  //   },
  //   {
  //     "image": ImageUtils.products4,
  //     "name": "Fishing Net"
  //   },
  // ];




  bool shouldPop = true;

  @override
  Widget build(BuildContext context) {
    controller.globalContext = context;
    final controller1 = PageController(viewportFraction: 0.8, keepPage: true);
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;

    return
      WillPopScope(
        onWillPop: ()async{
          return shouldPop;
        },
        child: SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            body: SingleChildScrollView(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.06,
                    vertical: _height * 0.06
                ),
                itemCount: itemList.length, // Number of containers
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: columnsCount,

                    //childAspectRatio: _height * 0.00087,
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
                                      itemList[index]['image']
                                    //ImageUtils.dealItem
                                  ),
                                    fit: BoxFit.contain,
                                  )
                              ),
                            ),
                            SizedBox(height: _height * 0.01,),
                            TextWidget1(
                              //textTitle: 'Microwave Oven',
                              textTitle: itemList[index]['name'],
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
            ),
            ),
        ),
        );
  }


}

class ShowMoreScreen2 extends GetView<ShowMoreController> {
  final String? name;
  final String image1;
  final String? image;
  ShowMoreScreen2({super.key,
    required this.image1,
    this.name,
    this.image
  });

  dynamic pages = [];
  dynamic pagesVertical = [];

  List itemList = [
    {
      "name": "Microwave Oven",
      "image": ImageUtils.dealItem
    },
    {
      "name": "Microwave Oven",
      "image": ImageUtils.dealItem
    },
    {
      "name": "Microwave Oven",
      "image": ImageUtils.dealItem
    },{
      "name": "Microwave Oven",
      "image": ImageUtils.dealItem
    },{
      "name": "Microwave Oven",
      "image": ImageUtils.dealItem
    },{
      "name": "Microwave Oven",
      "image": ImageUtils.dealItem
    },{
      "name": "Microwave Oven",
      "image": ImageUtils.dealItem
    },{
      "name": "Microwave Oven",
      "image": ImageUtils.dealItem
    },{
      "name": "Microwave Oven",
      "image": ImageUtils.dealItem
    },{
      "name": "Microwave Oven",
      "image": ImageUtils.dealItem
    },{
      "name": "Microwave Oven",
      "image": ImageUtils.dealItem
    },{
      "name": "Microwave Oven",
      "image": ImageUtils.dealItem
    },
  ];

  // List allProducts = [
  //   {
  //     "image": ImageUtils.products1,
  //     "name": "Bicycle"
  //   },
  //   {
  //     "image": ImageUtils.products2,
  //     "name": "Sneakers"
  //   },
  //   {
  //     "image": ImageUtils.products3,
  //     "name": "Swim Goggle"
  //   },
  //   {
  //     "image": ImageUtils.products4,
  //     "name": "Fishing Net"
  //   },
  // ];




  bool shouldPop = true;

  @override
  Widget build(BuildContext context) {
    controller.globalContext = context;
    final controller1 = PageController(viewportFraction: 0.8, keepPage: true);
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;

    return
      WillPopScope(
        onWillPop: ()async{
          return shouldPop;
        },
        child: SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            body: SingleChildScrollView(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.06,
                    vertical: _height * 0.06
                ),
                itemCount: itemList.length, // Number of containers
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: columnsCount,

                    //childAspectRatio: _height * 0.00087,
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
                                      itemList[index]['image']
                                    //ImageUtils.dealItem
                                  ),
                                    fit: BoxFit.contain,
                                  )
                              ),
                            ),
                            SizedBox(height: _height * 0.01,),
                            TextWidget1(
                              //textTitle: 'Microwave Oven',
                              textTitle: itemList[index]['name'],
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
            ),
          ),
        ),
      );
  }


}

class ShowMoreScreen3 extends GetView<ShowMoreController> {
  final String? name;
  final String image1;
  final String? image;
  ShowMoreScreen3({super.key,
    required this.image1,
    this.name,
    this.image
  });

  dynamic pages = [];
  dynamic pagesVertical = [];

  List itemList = [
    {
      "name": "T-Shirts",
      "image": ImageUtils.newArrival
    },
    {
      "name": "T-Shirts",
      "image": ImageUtils.newArrival
    },
    {
      "name": "T-Shirts",
      "image": ImageUtils.newArrival
    },{
      "name": "T-Shirts",
      "image": ImageUtils.newArrival
    },{
      "name": "T-Shirts",
      "image": ImageUtils.newArrival
    },{
      "name": "T-Shirts",
      "image": ImageUtils.newArrival
    },{
      "name": "T-Shirts",
      "image": ImageUtils.newArrival
    },{
      "name": "T-Shirts",
      "image": ImageUtils.newArrival
    },{
      "name": "T-Shirts",
      "image": ImageUtils.newArrival
    },{
      "name": "T-Shirts",
      "image": ImageUtils.newArrival
    },{
      "name": "T-Shirts",
      "image": ImageUtils.newArrival
    },{
      "name": "T-Shirts",
      "image": ImageUtils.newArrival
    },
  ];

  // List allProducts = [
  //   {
  //     "image": ImageUtils.products1,
  //     "name": "Bicycle"
  //   },
  //   {
  //     "image": ImageUtils.products2,
  //     "name": "Sneakers"
  //   },
  //   {
  //     "image": ImageUtils.products3,
  //     "name": "Swim Goggle"
  //   },
  //   {
  //     "image": ImageUtils.products4,
  //     "name": "Fishing Net"
  //   },
  // ];




  bool shouldPop = true;

  @override
  Widget build(BuildContext context) {
    controller.globalContext = context;
    final controller1 = PageController(viewportFraction: 0.8, keepPage: true);
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;

    return
      WillPopScope(
        onWillPop: ()async{
          return shouldPop;
        },
        child: SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            body: SingleChildScrollView(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.06,
                    vertical: _height * 0.06
                ),
                itemCount: itemList.length, // Number of containers
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: columnsCount,

                    //childAspectRatio: _height * 0.00087,
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
                                      itemList[index]['image']
                                    //ImageUtils.dealItem
                                  ),
                                    fit: BoxFit.contain,
                                  )
                              ),
                            ),
                            SizedBox(height: _height * 0.01,),
                            TextWidget1(
                              //textTitle: 'Microwave Oven',
                              textTitle: itemList[index]['name'],
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
            ),
          ),
        ),
      );
  }


}

class ShowMoreScreen4 extends GetView<ShowMoreController> {
  final String? name;
  final String image1;
  final String? image;
  ShowMoreScreen4({super.key,
    required this.image1,
    this.name,
    this.image
  });

  dynamic pages = [];
  dynamic pagesVertical = [];

  List itemList = [
    {
      "image": ImageUtils.promotionPic
    },
    {
      "image": ImageUtils.promotionPic
    },
    {
      "image": ImageUtils.promotionPic
    }, {
      "image": ImageUtils.promotionPic
    }, {
      "image": ImageUtils.promotionPic
    }, {
      "image": ImageUtils.promotionPic
    }, {
      "image": ImageUtils.promotionPic
    }, {
      "image": ImageUtils.promotionPic
    }, {
      "image": ImageUtils.promotionPic
    }, {
      "image": ImageUtils.promotionPic
    }, {
      "image": ImageUtils.promotionPic
    }, {
      "image": ImageUtils.promotionPic
    },
  ];

  // List allProducts = [
  //   {
  //     "image": ImageUtils.products1,
  //     "name": "Bicycle"
  //   },
  //   {
  //     "image": ImageUtils.products2,
  //     "name": "Sneakers"
  //   },
  //   {
  //     "image": ImageUtils.products3,
  //     "name": "Swim Goggle"
  //   },
  //   {
  //     "image": ImageUtils.products4,
  //     "name": "Fishing Net"
  //   },
  // ];




  bool shouldPop = true;

  @override
  Widget build(BuildContext context) {
    controller.globalContext = context;
    final controller1 = PageController(viewportFraction: 0.8, keepPage: true);
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;

    return
      WillPopScope(
        onWillPop: ()async{
          return shouldPop;
        },
        child: SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            body: SingleChildScrollView(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.06,
                    vertical: _height * 0.06
                ),
                itemCount: itemList.length, // Number of containers
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
                    onTap: (){
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
                                    itemList[index]['image']
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
            ),
          ),
        ),
      );
  }


}

class ShowMoreScreen5 extends GetView<ShowMoreController> {
  final String? name;
  final String image1;
  final String? image;
  ShowMoreScreen5({super.key,
    required this.image1,
    this.name,
    this.image
  });

  dynamic pages = [];
  dynamic pagesVertical = [];

  List itemList = [
    {
      "name": "Pascal Shop",
      "image": ImageUtils.topSeller
    },
    {
      "name": "Pascal Shop",
      "image": ImageUtils.topSeller
    },
    {
      "name": "Pascal Shop",
      "image": ImageUtils.topSeller
    },{
      "name": "Pascal Shop",
      "image": ImageUtils.topSeller
    },{
      "name": "Pascal Shop",
      "image": ImageUtils.topSeller
    },{
      "name": "Pascal Shop",
      "image": ImageUtils.topSeller
    },{
      "name": "Pascal Shop",
      "image": ImageUtils.topSeller
    },{
      "name": "Pascal Shop",
      "image": ImageUtils.topSeller
    },{
      "name": "Pascal Shop",
      "image": ImageUtils.topSeller
    },{
      "name": "Pascal Shop",
      "image": ImageUtils.topSeller
    },{
      "name": "Pascal Shop",
      "image": ImageUtils.topSeller
    },{
      "name": "Pascal Shop",
      "image": ImageUtils.topSeller
    },
  ];

  // List allProducts = [
  //   {
  //     "image": ImageUtils.products1,
  //     "name": "Bicycle"
  //   },
  //   {
  //     "image": ImageUtils.products2,
  //     "name": "Sneakers"
  //   },
  //   {
  //     "image": ImageUtils.products3,
  //     "name": "Swim Goggle"
  //   },
  //   {
  //     "image": ImageUtils.products4,
  //     "name": "Fishing Net"
  //   },
  // ];




  bool shouldPop = true;

  @override
  Widget build(BuildContext context) {
    controller.globalContext = context;
    final controller1 = PageController(viewportFraction: 0.8, keepPage: true);
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;

    return
      WillPopScope(
        onWillPop: ()async{
          return shouldPop;
        },
        child: SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            body: SingleChildScrollView(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.06,
                    vertical: _height * 0.06
                ),
                itemCount: itemList.length, // Number of containers
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
                    onTap: (){
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
                                    itemList[index]['image']
                                ),
                                    fit: BoxFit.contain
                                )
                            ),
                          ),
                          SizedBox(height: _height * 0.015,),
                          TextWidget1(
                            textTitle: itemList[index]['name'],
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
            ),
          ),
        ),
      );
  }


}

class ShowMoreScreen6 extends GetView<ShowMoreController> {
  final String? name;
  final String image1;
  final String? image;
  ShowMoreScreen6({super.key,
    required this.image1,
    this.name,
    this.image
  });

  dynamic pages = [];
  dynamic pagesVertical = [];

  List itemList = [
    {
      "name": "Nike",
      "image": ImageUtils.topBrands
    },
    {
      "name": "Nike",
      "image": ImageUtils.topBrands
    },
    {
      "name": "Nike",
      "image": ImageUtils.topBrands
    },{
      "name": "Nike",
      "image": ImageUtils.topBrands
    },{
      "name": "Nike",
      "image": ImageUtils.topBrands
    },{
      "name": "Nike",
      "image": ImageUtils.topBrands
    },{
      "name": "Nike",
      "image": ImageUtils.topBrands
    },{
      "name": "Nike",
      "image": ImageUtils.topBrands
    },{
      "name": "Nike",
      "image": ImageUtils.topBrands
    },{
      "name": "Nike",
      "image": ImageUtils.topBrands
    },{
      "name": "Nike",
      "image": ImageUtils.topBrands
    },{
      "name": "Nike",
      "image": ImageUtils.topBrands
    },
  ];

  // List allProducts = [
  //   {
  //     "image": ImageUtils.products1,
  //     "name": "Bicycle"
  //   },
  //   {
  //     "image": ImageUtils.products2,
  //     "name": "Sneakers"
  //   },
  //   {
  //     "image": ImageUtils.products3,
  //     "name": "Swim Goggle"
  //   },
  //   {
  //     "image": ImageUtils.products4,
  //     "name": "Fishing Net"
  //   },
  // ];




  bool shouldPop = true;

  @override
  Widget build(BuildContext context) {
    controller.globalContext = context;
    final controller1 = PageController(viewportFraction: 0.8, keepPage: true);
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;

    return
      WillPopScope(
        onWillPop: ()async{
          return shouldPop;
        },
        child: SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            body: SingleChildScrollView(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.06,
                    vertical: _height * 0.06
                ),
                itemCount: itemList.length, // Number of containers
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
                    onTap: (){
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
                                    itemList[index]['image']
                                ),
                                    fit: BoxFit.contain
                                )
                            ),
                          ),
                          SizedBox(height: _height * 0.015,),
                          TextWidget1(
                            textTitle: itemList[index]['name'],
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
            ),
          ),
        ),
      );
  }


}
