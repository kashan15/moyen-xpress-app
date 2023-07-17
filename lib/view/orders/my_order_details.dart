import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_grid_button.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/controller/my_order_details_controller.dart';
import 'package:moyen_xpress_app/controller/my_orders_controller.dart';
import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/lang_string_util.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import 'package:moyen_xpress_app/utils/theme.dart';
import 'package:readmore/readmore.dart';

import '../../components/custom_richtext.dart';
import '../../utils/font_utils.dart';


class MyOrderDetailsScreen extends GetView<MyOrderDetailsController> {
  final String? name;
  int? index;
  MyOrderDetailsScreen({super.key,
    this.name,
    this.index
  });

  bool willPop = true;

  final List<String> items = List.generate(3, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    final MyOrderDetailsController controller = Get.put(MyOrderDetailsController());
     controller.globalContext = context;
    return DefaultTabController(
      length: 3,
      child: WillPopScope(
        onWillPop: () async{
          return willPop;
        },
        child: SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            backgroundColor: backgroundColor,
            body: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: _height * 0.05,),
                  Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.only(left: _width * 0.025),
                          constraints: const BoxConstraints(),
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: _height * 0.025,
                          )),
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidget(
                                textTitle: 'My Orders',
                                fontWeight: FontWeight.w700,
                                fontSize: _height * 0.025,
                                color: Colors.black,
                              ),
                            ],
                          ))
                    ],
                  ),


                  /// Staggered GridView
                  // Padding(
                  //   padding: EdgeInsets.symmetric(
                  //     horizontal: 12.0
                  //   ),
                  //   child: SizedBox(
                  //     height: Get.height,
                  //     child: StaggeredGridView.count(
                  //       crossAxisCount: 3, // Total number of columns in the single row
                  //       children: List.generate(items.length, (index)
                  //       {
                  //         if (index == 0) {
                  //           // First item with size 100x1 in the first column
                  //           return _buildTile(items[index], 2, 1);
                  //         } else {
                  //           // Other items with size 50x1 in the second column
                  //           return _buildTile(items[index], 1, 1);
                  //         }
                  //       }
                  //       ),
                  //       staggeredTiles: [
                  //         /// 1st Width, 2nd Height
                  //         StaggeredTile.count(02, 2.25), // First item size (100x1)
                  //         StaggeredTile.count(1, 1.125), // Second item size (50x1)
                  //         StaggeredTile.count(1, 1.125), // Third item size (50x1)
                  //       ],
                  //       mainAxisSpacing: 0.0, // Vertical spacing between items
                  //       crossAxisSpacing: 0.0, // Horizontal spacing between items
                  //     ),
                  //   ),
                  // ),

                  SizedBox(height: _height * 0.03,),
                  Container(
                    height: Get.height * 0.25,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                        horizontal: _width * 0.03
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                        borderRadius: BorderRadius.circular(
                            _width * 0.02
                        ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: _height * 0.025,
                            left: _width * 0.465,
                            child: Image.asset(
                          ImageUtils.walletBalanceLogo,
                          height: _height * 0.2,
                          fit: BoxFit.contain,
                        )),
                        Positioned(
                            top: _height * 0.075,
                            left: _width * 0.025,
                            child: TextWidget1(
                              style: CustomTheme.balanceText,
                              textTitle: 'Wallet Balance',
                            )
                        ),
                        Positioned(
                            top: _height * 0.09,
                            left: _width * 0.025,
                            child: TextWidget1(
                              style: CustomTheme.balanceAmount,
                              textTitle: '\$200.52',
                            )
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: _height * 0.03,),
                  Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.025
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CustomButton(
                            isSelected: false,
                            margin: EdgeInsets.zero,
                            // width: _width * 0.4,
                            onTap: (){
                             Get.toNamed(kPaymentDetails);
                            },
                            padding: EdgeInsets.symmetric(
                              // horizontal: _width * 0.05,
                                vertical: _height * 0.02
                            ),
                            title: controller.itemsList[index!].name,
                            color: buyNow,
                            textColor: Colors.white,
                            fontSize: _height * 0.02,
                            fontFamily: poppinsRegular,
                            borderRadius: _width * 0.02,
                          ),
                        ),
                        SizedBox(width: _width * 0.04,),
                        Expanded(
                          child: CustomButton(
                            isSelected: false,
                            margin: EdgeInsets.zero,
                            // width: _width * 0.4,
                            padding: EdgeInsets.symmetric(
                              // horizontal: _width * 0.05,
                                vertical: _height * 0.02
                            ),
                            title: 'Withdraw',
                            color: Colors.black,
                            textColor: Colors.white,
                            fontSize: _height * 0.02,
                            fontFamily: poppinsRegular,
                            borderRadius: _width * 0.02,
                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height: _height * 0.03,),
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
                          text: 'Recharge History',
                        ),
                        Tab(
                            text: 'Cashback History'
                        ),
                        Tab(
                            text: 'Withdraw History'
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
                          color: backgroundColor,
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
                          color: backgroundColor,
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
                          color: backgroundColor,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTile(String item, int crossAxisCount, int mainAxisCount,) {
    // double _height = MediaQuery.of(context).size.height;
    // double _width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.red,
      padding: EdgeInsets.symmetric(
        horizontal: 0.0
      ),
      child: Card(
        child: Center(
          child: Text(item),
        ),
      ),
    );
  }
}


