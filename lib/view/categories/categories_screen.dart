import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/controller/categories_controller.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import 'package:moyen_xpress_app/view/categories/categories_details.dart';

import '../../components/custom_grid_button.dart';
import '../../components/rating_widget.dart';
import '../../components/text_widget.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';
import '../../utils/image_utils.dart';

class CategoriesScreen extends GetView<CategoriesController> {
   CategoriesScreen({Key? key}) : super(key: key);

  List categoriesItems = [
    {
      'image': ImageUtils.categoriesPic1,
      'name': 'Sports & Outdoor'
    },{
      'image': ImageUtils.categoriesPic2,
      'name': 'Home, Garden & Tools',
    },{
      'image': ImageUtils.categoriesPic3,
      'name': 'Pet Supplies'
    },{
      'image': ImageUtils.categoriesPic4,
      'name': 'Food & Grocery'
    },{
      'image': ImageUtils.categoriesPic5,
      'name': 'Beauty & Health'
    },{
      'image': ImageUtils.categoriesPic6,
      'name': 'Toys, Kids & Baby'
    },{
      'image': ImageUtils.categoriesPic7,
      'name': 'Handmade'
    },{
      'image': ImageUtils.categoriesPic8,
      'name': 'Automobile & Industry'
    },{
      'image': ImageUtils.categoriesPic9,
      'name': 'Industrial & Scientific'
    },{
      'image': ImageUtils.categoriesPic10,
      'name': 'Automobile & Motorcycle'
    },{
      'image': ImageUtils.categoriesPic11,
      'name': 'Clothing, Shoes, Jewelry & watches'
    },{
      'image': ImageUtils.categoriesPic12,
      'name': 'Books'
    },{
      'image': ImageUtils.categoriesPic13,
      'name': 'Movies, Music & Games'
    },{
      'image': ImageUtils.categoriesPic14,
      'name': 'Electronics'
    },{
      'image': ImageUtils.categoriesPic15,
      'name': 'Computers'
    },{
      'image': ImageUtils.categoriesPic16,
      'name': 'Smart Home'
    },
  ];

  @override
  Widget build(BuildContext context) {
    controller.globalContext = context;
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: _height * 0.02,),
            Row(
                children:[
                  SizedBox(width: _width * 0.06,),
                  TextWidget(
                    textTitle: 'Categories',
                    fontWeight: FontWeight.w500,
                    fontSize: _height * 0.02,
                    color: Colors.black,
                  ),
                ]),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  horizontal: _width * 0.04,
                  vertical: _height * 0.01
              ),
              itemCount: categoriesItems.length, // Number of containers
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                // childAspectRatio: 0.60,
                childAspectRatio: Get.height * 0.000735,
                // crossAxisSpacing: 15.0,
                crossAxisSpacing: Get.width * 0.02,
                // mainAxisSpacing: 20.0,
                  mainAxisSpacing: Get.height * 0.025
              ),
              itemBuilder: (BuildContext context, int index) {
                // Build each container
                return  GestureDetector(
                  onTap: (){
                    Get.toNamed(kCategoryDetails);
                  },
                  child: Container(
                    // height: _height * 0.15,
                    // width: _width * 0.1,
                    padding: EdgeInsets.symmetric(
                        horizontal: _width * 0.008,
                        vertical: _height * 0.008
                    ),
                    color: backgroundColor,
                    child:
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children:[

                        /// Circle Container
                        Container(
                        // padding: EdgeInsets.symmetric(
                        // horizontal: _width * 0.0225,
                        // vertical: _height * 0.0125
                        // ),
                        height: _height * 0.09,
                        decoration: BoxDecoration(
                      color: categoriesColor,
                      shape: BoxShape.circle,

                      // borderRadius: BorderRadius.circular(_width * 0.025),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 3,
                          //spreadRadius: 5,
                          offset: Offset(0, 5), // Shadow position
                        ),],
                      image: DecorationImage(image: AssetImage(
                          categoriesItems[index]['image']
                      ),
                        fit: BoxFit.contain
                      )
                        ),

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
                        SizedBox(height: _height * 0.01,),
                        TextWidget(
                        textTitle: categoriesItems[index]['name'],
                        fontSize: _height * 0.0125,
                        color: Colors.black,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overFlow: TextOverflow.ellipsis,
                          )
                    ]),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
