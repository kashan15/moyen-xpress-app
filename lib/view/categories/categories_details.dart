import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:like_button/like_button.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/rating_widget.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/categories_details_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/view/products/product_details.dart';
import '../../components/custom_dialog.dart';
import '../../controller/home_controller.dart';

class CategoryDetailsScreen extends GetView<CategoriesDetailsController> {
  final String? name;
  final String? image;
  CategoryDetailsScreen({super.key,
  this.name,
     this.image
  });

  dynamic pages = [];
  dynamic pagesVertical = [];

  List categoriesList = [
    {
      "name": "Swimming",
      "image": ImageUtils.sports1
    },{
      "name": "Cycling",
      "image": ImageUtils.sports2
    },{
      "name": "Sneakers",
      "image": ImageUtils.sports3
    },{
      "name": "Fishing",
      "image": ImageUtils.sports4
    },
    {
      "name": "Swimming",
      "image": ImageUtils.sports1
    },{
      "name": "Cycling",
      "image": ImageUtils.sports2
    },{
      "name": "Sneakers",
      "image": ImageUtils.sports3
    },{
      "name": "Fishing",
      "image": ImageUtils.sports4
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

  List color = [
    {
      "color": Colors.white,
      "shadow": Colors.white
    },{
      "color": topSeller,
      "shadow": Colors.grey.withOpacity(0.5)
    },{
      "color": topSeller,
      "shadow": Colors.grey.withOpacity(0.5)
    },
    {
      "color": Colors.white,
      "shadow": Colors.white
    },
    {
      "color": Colors.white,
      "shadow": Colors.white
    },{
      "color": topSeller,
      "shadow": Colors.grey.withOpacity(0.5)
    },{
      "color": topSeller,
      "shadow": Colors.grey.withOpacity(0.5)
    },
    {
      "color": Colors.white,
      "shadow": Colors.white
    },
    {
      "color": Colors.white,
      "shadow": Colors.white
    },{
      "color": topSeller,
      "shadow": Colors.grey.withOpacity(0.5)
    },{
      "color": topSeller,
      "shadow": Colors.grey.withOpacity(0.5)
    },
    {
      "color": Colors.white,
      "shadow": Colors.white
    },
  ];

  bool shouldPop = true;

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
      WillPopScope(
        onWillPop: ()async{
          return shouldPop;
        },
        child: Scaffold(
          // backgroundColor: Colors.yellow,
          body: SingleChildScrollView(
            child: Container(
              color: backgroundColor,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height: _height * 0.06,),
                  Container(
                    width: double.infinity,
                    height: _height * 0.20,
                    //color: Colors.yellow,
                    margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage(
                            ImageUtils.categoryDetailBanner
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
                          textTitle: 'Sports & Outdoor',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ]),
                  const SizedBox(height: 10,),

                  SizedBox(
                    height: _height * 0.1425,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: categoriesList.length,
                        itemBuilder: (context, index) {
                          return Container(
                              color: Colors.transparent,
                              // padding: EdgeInsets.all(1.w),
                              child: Container(
                                color: backgroundColor,
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
                                    SizedBox(height: 10,),
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

                  SizedBox(height: _height * 0.015,),

                  Row(
                      children:[
                        SizedBox(width: _width * 0.04,),
                        TextWidget(
                          textTitle: 'All Products',
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
                    itemCount: controller.allProducts.length, // Number of containers
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columnsCount,
                      // childAspectRatio: 0.68,
                      // crossAxisSpacing: 25.0,
                      // mainAxisSpacing: 25.0,
                        childAspectRatio: Get.width*1.35 / Get.height*1.04,
                        crossAxisSpacing: Get.width * 0.06,
                        mainAxisSpacing: Get.height * 0.0275
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      // Build each container
                      return  GestureDetector(
                        onTap: (){
                          // Get.to(
                          //   ProductDetails(
                          //     imageIndex2: controller.allProducts[index],
                          //   )
                          // );

                          Get.dialog(
                              CustomDialogSimple(
                                title: 'Will Be Visible Soon',
                                description: 'currently we are working on that feature',
                                okTap: false,
                              )
                          );
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: _width * 0.0225, vertical: _height * 0.0125),
                            decoration: BoxDecoration(
                              color: Colors.white,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      //margin: EdgeInsets.only(right: _width * 0.15),
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
                                    Container(
                                      //margin: EdgeInsets.only(right: _width * 0.285),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: _width * 0.01,
                                          vertical: _height * 0.002
                                      ),
                                      decoration: BoxDecoration(
                                          color: color[index]["color"],
                                          borderRadius: BorderRadius.circular(_width * 0.005),
                                          boxShadow: [
                                            BoxShadow(
                                              color: color[index]["shadow"],
                                              blurRadius: 3,
                                              //spreadRadius: 5,
                                              offset: Offset(0, 3), // Shadow position
                                            ),]
                                      ),
                                      child: Center(
                                        child: TextWidget(
                                          textTitle: 'Top Seller',
                                          fontFamily: montserratSemiBold,
                                          fontSize: 10.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: _height * 0.02,),
                                Container(
                                  height: _height * 0.115,
                                  width: double.infinity,
                                  margin: EdgeInsets.symmetric(horizontal: _width * 0.018),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(image: AssetImage(
                                        controller.allProducts[index].image!
                                      ),
                                        fit: BoxFit.contain,
                                      )
                                  ),
                                ),
                                SizedBox(height: _height * 0.01,),
                                TextWidget(
                                  textTitle:  controller.allProducts[index].name,
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

                        ),
                      );
                    },
                  ),
                  SizedBox(height: _height * 0.015,),

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
                color: Colors.white,
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
