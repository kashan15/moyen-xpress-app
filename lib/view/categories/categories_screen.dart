import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/controller/categories_controller.dart';

import '../../components/custom_grid_button.dart';
import '../../components/rating_widget.dart';
import '../../components/text_widget.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';
import '../../utils/image_utils.dart';

class CategoriesScreen extends GetView<CategoriesController> {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.globalContext!;
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
