import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/view/products/product_details.dart';
import '../../components/custom_richtext.dart';
import '../../components/rating_widget.dart';
import '../../controller/auction_products_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';
import '../../utils/theme.dart';


// class AuctionScreen extends GetView<AuctionScreenController> {
//   bool? check = false;
//
//   AuctionScreen({super.key,
//     this.check
//   });
//
//   bool willPop = true;
//   int select = 0;
//
//
//   List auctionProducts = [
//     {
//       "image": ImageUtils.auctionPic,
//       "name": "Car",
//       "price": "1000"
//     },
//     {
//       "image": ImageUtils.auctionPic,
//       "name": "Car",
//       "price": "1000"
//     },{
//       "image": ImageUtils.auctionPic,
//       "name": "Car",
//       "price": "1000"
//     },{
//       "image": ImageUtils.auctionPic,
//       "name": "Car",
//       "price": "1000"
//     },{
//       "image": ImageUtils.auctionPic,
//       "name": "Car",
//       "price": "1000"
//     },{
//       "image": ImageUtils.auctionPic,
//       "name": "Car",
//       "price": "1000"
//     },{
//       "image": ImageUtils.auctionPic,
//       "name": "Car",
//       "price": "1000"
//     },{
//       "image": ImageUtils.auctionPic,
//       "name": "Car",
//       "price": "1000"
//     },{
//       "image": ImageUtils.auctionPic,
//       "name": "Car",
//       "price": "1000"
//     },{
//       "image": ImageUtils.auctionPic,
//       "name": "Car",
//       "price": "1000"
//     },{
//       "image": ImageUtils.auctionPic,
//       "name": "Car",
//       "price": "1000"
//     },{
//       "image": ImageUtils.auctionPic,
//       "name": "Car",
//       "price": "1000"
//     },
//   ];
//
//   List technicianServices = [
//     {
//       "image": ImageUtils.technicianPic1,
//       "name": "Plumbing Service",
//       "price": "\$1000"
//     },
//     {
//       "image": ImageUtils.technicianPic2,
//       "name": "Electrician",
//       "price": "\$1000"
//     },{
//       "image": ImageUtils.technicianPic3,
//       "name": "Carpenter",
//       "price": "\$1000"
//     },
//     {
//       "image": ImageUtils.technicianPic4,
//       "name": "Gardener",
//       "price": "\$1000"
//     },
//     {
//       "image": ImageUtils.technicianPic1,
//       "name": "Plumbing Service",
//       "price": "\$1000"
//     },
//     {
//       "image": ImageUtils.technicianPic2,
//       "name": "Electrician",
//       "price": "\$1000"
//     },{
//       "image": ImageUtils.technicianPic3,
//       "name": "Carpenter",
//       "price": "\$1000"
//     },
//     {
//       "image": ImageUtils.technicianPic4,
//       "name": "Gardener",
//       "price": "\$1000"
//     },
//     {
//       "image": ImageUtils.technicianPic1,
//       "name": "Plumbing Service",
//       "price": "\$1000"
//     },
//     {
//       "image": ImageUtils.technicianPic2,
//       "name": "Electrician",
//       "price": "\$1000"
//     },{
//       "image": ImageUtils.technicianPic3,
//       "name": "Carpenter",
//       "price": "\$1000"
//     },
//     {
//       "image": ImageUtils.technicianPic4,
//       "name": "Gardener",
//       "price": "\$1000"
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     double _height = MediaQuery.of(context).size.height;
//     double _width = MediaQuery.of(context).size.width;
//     int columnsCount = MediaQuery.of(context).size.width < 600 ? 2 : 1;
//     controller.globalContext = context;
//     return WillPopScope(
//       onWillPop: () async{
//         return willPop;
//       },
//       child: SafeArea(
//         top: false,
//         bottom: false,
//         child: Scaffold(
//           backgroundColor: Colors.white,
//           appBar: CustomAppbar1(
//             heading: check == false ?
//                 'Auction Products' : 'Technician'
//           ),
//           body: SingleChildScrollView(
//             // physics: const NeverScrollableScrollPhysics(),
//             child: Column(
//               children: [
//                 SizedBox(height: _height * 0.015,),
//
//                 /// Banner
//                 Container(
//                   height: Get.height * 0.25 ,
//                   width: double.infinity,
//                   margin: EdgeInsets.symmetric(
//                       horizontal: _width * 0.03
//                   ),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(
//                           _width * 0.02
//                       ),
//                       image: DecorationImage(image:
//                       AssetImage(
//                         check == false ?
//                           ImageUtils.auctionBanner : ImageUtils.technicianBanner
//                       ),
//                           fit: BoxFit.cover
//                       )
//                   ),
//                 ),
//                 SizedBox(height: _height * 0.015,),
//
//                 check == false ?
//                 GridView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   padding: EdgeInsets.symmetric(
//                       horizontal: _width * 0.06,
//                       vertical: _height * 0.02
//                   ),
//                   itemCount: auctionProducts.length, // Number of containers
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: columnsCount,
//                       // childAspectRatio: _height * 0.000835,
//                       childAspectRatio: Get.width*1.65 / Get.height*1.04,
//                       crossAxisSpacing: Get.width * 0.08,
//                       mainAxisSpacing: Get.height * 0.035
//                   ),
//                   itemBuilder: (BuildContext context, int index) {
//                     // Build each container
//                     return  GestureDetector(
//                       onTap: (){
//                         Get.to(
//                           ProductDetails(
//                             check1: 1,
//                           )
//                         );
//                       },
//                       child: Stack(
//                         children:[
//                           Container(
//                             padding: EdgeInsets.symmetric(horizontal: _width * 0.045, ),
//                             decoration: BoxDecoration(
//                               color: gridColor,
//                               borderRadius: BorderRadius.circular(_width * 0.025),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey.withOpacity(0.5),
//                                   blurRadius: 3,
//                                   //spreadRadius: 5,
//                                   offset: Offset(0, 5), // Shadow position
//                                 ),],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 SizedBox(height: Get.height * 0.04,),
//                                 Container(
//                                   height: Get.height * 0.115,
//                                   width: double.infinity,
//                                   decoration: BoxDecoration(
//                                       color: Colors.red,
//                                     image: DecorationImage(image:
//                                     AssetImage(
//                                       auctionProducts[index]["image"],
//                                     ),
//                                     fit: BoxFit.fill
//                                     )
//                                   ),
//                                 ),
//                                 SizedBox(height: Get.height * 0.005,),
//                                 TextWidget1(
//                                   textTitle: auctionProducts[index]["name"],
//                                   style: CustomTheme.normalTextBlack,
//                                   overFlow: TextOverflow.ellipsis,
//                                   maxLines: 1,
//                                 ),
//                                 CustomRichText(
//                                   textSpan1: 'Starting Bid: ',
//                                   fontFamily1: poppinsMedium,
//                                   fontSize1: Get.height * 0.01,
//                                   color1: darkGrey,
//                                   textAlign1: TextAlign.start,
//                                   textSpan2: '\$${auctionProducts[index]["price"]}',
//                                   fontFamily2: poppinsSemiBold,
//                                   fontSize2: Get.height * 0.01,
//                                   color2: homeBoxColor,
//                                   textAlign2: TextAlign.start,
//                                   overFlow2: TextOverflow.ellipsis,
//                                   maxLines2: 1,
//                                 ),
//                                 SizedBox(height: Get.height * 0.005,),
//                                 RatingWidget(
//                                   initialRating: 4.5,
//                                 ),
//                               ],
//                             )
//                         ),
//                           Positioned(
//                             top: Get.height * 0.195,
//                               left: Get.width * 0.3,
//                               child: GestureDetector(
//                                 onTap:(){},
//                                 child: Container(
//                                   height: Get.height * 0.025,
//                                   width: Get.width * 0.0795,
//                                   decoration: BoxDecoration(
//                                     color: homeBoxColor,
//                                     borderRadius: BorderRadius.circular(
//                                       Get.width * 0.01
//                                     )
//                                   ),
//                                   child: Center(
//                                     child: Image.asset(
//                                       ImageUtils.auctionIcon,
//                                       height: Get.height * 0.0175,
//                                     )
//                                   ),
//                                 ),
//                               )
//                           )
//                       ]),
//                     );
//                   },
//                 ) :
//                 GridView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   padding: EdgeInsets.symmetric(
//                       horizontal: _width * 0.06,
//                       vertical: _height * 0.02
//                   ),
//                   itemCount: technicianServices.length, // Number of containers
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: columnsCount,
//                       // childAspectRatio: _height * 0.000835,
//                       childAspectRatio: Get.width*1.65 / Get.height*1.04,
//                       crossAxisSpacing: Get.width * 0.08,
//                       mainAxisSpacing: Get.height * 0.035
//                   ),
//                   itemBuilder: (BuildContext context, int index) {
//                     // Build each container
//                     return  GestureDetector(
//                       onTap: (){
//                         Get.to(
//                             ProductDetails(
//                               check1: 1,
//                             )
//                         );
//                       },
//                       child: Stack(
//                           children:[
//                             Container(
//                                 padding: EdgeInsets.symmetric(horizontal: _width * 0.045, ),
//                                 decoration: BoxDecoration(
//                                   color: gridColor,
//                                   borderRadius: BorderRadius.circular(_width * 0.025),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey.withOpacity(0.5),
//                                       blurRadius: 3,
//                                       //spreadRadius: 5,
//                                       offset: Offset(0, 5), // Shadow position
//                                     ),],
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     SizedBox(height: Get.height * 0.04,),
//                                     Container(
//                                       height: Get.height * 0.115,
//                                       width: double.infinity,
//                                       decoration: BoxDecoration(
//                                           color: Colors.red,
//                                           image: DecorationImage(image:
//                                           AssetImage(
//                                             technicianServices[index]["image"],
//                                           ),
//                                               fit: BoxFit.fill
//                                           )
//                                       ),
//                                     ),
//                                     SizedBox(height: Get.height * 0.005,),
//                                     TextWidget1(
//                                       textTitle: technicianServices[index]["name"],
//                                       style: CustomTheme.normalTextBlack,
//                                       overFlow: TextOverflow.ellipsis,
//                                       maxLines: 1,
//                                     ),
//                                     CustomRichText(
//                                       textSpan1: 'Starting Bid: ',
//                                       fontFamily1: poppinsMedium,
//                                       fontSize1: Get.height * 0.01,
//                                       color1: darkGrey,
//                                       textAlign1: TextAlign.start,
//                                       textSpan2: '\$${auctionProducts[index]["price"]}',
//                                       fontFamily2: poppinsSemiBold,
//                                       fontSize2: Get.height * 0.01,
//                                       color2: homeBoxColor,
//                                       textAlign2: TextAlign.start,
//                                       overFlow2: TextOverflow.ellipsis,
//                                       maxLines2: 1,
//                                     ),
//                                     SizedBox(height: Get.height * 0.005,),
//                                     RatingWidget(
//                                       initialRating: 4.5,
//                                     ),
//                                   ],
//                                 )
//                             ),
//                             Positioned(
//                                 top: Get.height * 0.195,
//                                 left: Get.width * 0.3,
//                                 child: GestureDetector(
//                                   onTap:(){},
//                                   child: Container(
//                                     height: Get.height * 0.025,
//                                     width: Get.width * 0.0795,
//                                     decoration: BoxDecoration(
//                                         color: homeBoxColor,
//                                         borderRadius: BorderRadius.circular(
//                                             Get.width * 0.01
//                                         )
//                                     ),
//                                     child: Center(
//                                         child: Image.asset(
//                                           ImageUtils.technicianIcon1,
//                                           height: Get.height * 0.0175,
//                                         )
//                                     ),
//                                   ),
//                                 )
//                             )
//                           ]),
//                     );
//                   },
//                 ),
//
//
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


class AuctionScreen extends StatelessWidget {
  bool? check = false;
  AuctionScreen({Key? key,
  this.check
  }) : super(key: key);

  bool willPop = true;
  int select = 0;


  List auctionProducts = [
    {
      "image": ImageUtils.auctionPic,
      "name": "Car",
      "price": "1000"
    },
    {
      "image": ImageUtils.auctionPic,
      "name": "Car",
      "price": "1000"
    },{
      "image": ImageUtils.auctionPic,
      "name": "Car",
      "price": "1000"
    },{
      "image": ImageUtils.auctionPic,
      "name": "Car",
      "price": "1000"
    },{
      "image": ImageUtils.auctionPic,
      "name": "Car",
      "price": "1000"
    },{
      "image": ImageUtils.auctionPic,
      "name": "Car",
      "price": "1000"
    },{
      "image": ImageUtils.auctionPic,
      "name": "Car",
      "price": "1000"
    },{
      "image": ImageUtils.auctionPic,
      "name": "Car",
      "price": "1000"
    },{
      "image": ImageUtils.auctionPic,
      "name": "Car",
      "price": "1000"
    },{
      "image": ImageUtils.auctionPic,
      "name": "Car",
      "price": "1000"
    },{
      "image": ImageUtils.auctionPic,
      "name": "Car",
      "price": "1000"
    },{
      "image": ImageUtils.auctionPic,
      "name": "Car",
      "price": "1000"
    },
  ];

  List technicianServices = [
    {
      "image": ImageUtils.technicianPic1,
      "name": "Plumbing Service",
      "price": "\$1000"
    },
    {
      "image": ImageUtils.technicianPic2,
      "name": "Electrician",
      "price": "\$1000"
    },{
      "image": ImageUtils.technicianPic3,
      "name": "Carpenter",
      "price": "\$1000"
    },
    {
      "image": ImageUtils.technicianPic4,
      "name": "Gardener",
      "price": "\$1000"
    },
    {
      "image": ImageUtils.technicianPic1,
      "name": "Plumbing Service",
      "price": "\$1000"
    },
    {
      "image": ImageUtils.technicianPic2,
      "name": "Electrician",
      "price": "\$1000"
    },{
      "image": ImageUtils.technicianPic3,
      "name": "Carpenter",
      "price": "\$1000"
    },
    {
      "image": ImageUtils.technicianPic4,
      "name": "Gardener",
      "price": "\$1000"
    },
    {
      "image": ImageUtils.technicianPic1,
      "name": "Plumbing Service",
      "price": "\$1000"
    },
    {
      "image": ImageUtils.technicianPic2,
      "name": "Electrician",
      "price": "\$1000"
    },{
      "image": ImageUtils.technicianPic3,
      "name": "Carpenter",
      "price": "\$1000"
    },
    {
      "image": ImageUtils.technicianPic4,
      "name": "Gardener",
      "price": "\$1000"
    },
  ];
  
  final AuctionScreenController controller = Get.put(AuctionScreenController());

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
              heading: check == false ?
              'Auction Products' : 'Technician'
          ),
          body: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: _height * 0.015,),

                /// Banner
                Container(
                  height: Get.height * 0.25 ,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: _width * 0.03
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          _width * 0.02
                      ),
                      image: DecorationImage(image:
                      AssetImage(
                          check == false ?
                          ImageUtils.auctionBanner : ImageUtils.technicianBanner
                      ),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(height: _height * 0.015,),

                check == false ?
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: _width * 0.06,
                      vertical: _height * 0.02
                  ),
                  itemCount: auctionProducts.length, // Number of containers
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columnsCount,
                      // childAspectRatio: _height * 0.000835,
                      childAspectRatio: Get.width*1.65 / Get.height*1.04,
                      crossAxisSpacing: Get.width * 0.08,
                      mainAxisSpacing: Get.height * 0.035
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // Build each container
                    return  GestureDetector(
                      onTap: (){
                        Get.to(
                            ProductDetails(
                              check1: 1,
                            )
                        );
                      },
                      child: Stack(
                          children:[
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: _width * 0.045, ),
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
                                    SizedBox(height: Get.height * 0.04,),
                                    Container(
                                      height: Get.height * 0.115,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          image: DecorationImage(image:
                                          AssetImage(
                                            auctionProducts[index]["image"],
                                          ),
                                              fit: BoxFit.fill
                                          )
                                      ),
                                    ),
                                    SizedBox(height: Get.height * 0.005,),
                                    TextWidget1(
                                      textTitle: auctionProducts[index]["name"],
                                      style: CustomTheme.normalTextBlack,
                                      overFlow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                    CustomRichText(
                                      textSpan1: 'Starting Bid: ',
                                      fontFamily1: poppinsMedium,
                                      fontSize1: Get.height * 0.01,
                                      color1: darkGrey,
                                      textAlign1: TextAlign.start,
                                      textSpan2: '\$${auctionProducts[index]["price"]}',
                                      fontFamily2: poppinsSemiBold,
                                      fontSize2: Get.height * 0.01,
                                      color2: homeBoxColor,
                                      textAlign2: TextAlign.start,
                                      overFlow2: TextOverflow.ellipsis,
                                      maxLines2: 1,
                                    ),
                                    SizedBox(height: Get.height * 0.005,),
                                    RatingWidget(
                                      initialRating: 4.5,
                                    ),
                                  ],
                                )
                            ),
                            Positioned(
                                top: Get.height * 0.195,
                                left: Get.width * 0.3,
                                child: GestureDetector(
                                  onTap:(){},
                                  child: Container(
                                    height: Get.height * 0.025,
                                    width: Get.width * 0.0795,
                                    decoration: BoxDecoration(
                                        color: homeBoxColor,
                                        borderRadius: BorderRadius.circular(
                                            Get.width * 0.01
                                        )
                                    ),
                                    child: Center(
                                        child: Image.asset(
                                          ImageUtils.auctionIcon,
                                          height: Get.height * 0.0175,
                                        )
                                    ),
                                  ),
                                )
                            )
                          ]),
                    );
                  },
                ) :
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: _width * 0.06,
                      vertical: _height * 0.02
                  ),
                  itemCount: technicianServices.length, // Number of containers
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columnsCount,
                      // childAspectRatio: _height * 0.000835,
                      childAspectRatio: Get.width*1.65 / Get.height*1.04,
                      crossAxisSpacing: Get.width * 0.08,
                      mainAxisSpacing: Get.height * 0.035
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // Build each container
                    return  GestureDetector(
                      onTap: (){
                        Get.to(
                            ProductDetails(
                              check1: 2,
                            )
                        );
                      },
                      child: Stack(
                          children:[
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: _width * 0.045, ),
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
                                    SizedBox(height: Get.height * 0.04,),
                                    Container(
                                      height: Get.height * 0.115,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          image: DecorationImage(image:
                                          AssetImage(
                                            technicianServices[index]["image"],
                                          ),
                                              fit: BoxFit.fill
                                          )
                                      ),
                                    ),
                                    SizedBox(height: Get.height * 0.005,),
                                    TextWidget1(
                                      textTitle: technicianServices[index]["name"],
                                      style: CustomTheme.normalTextBlack,
                                      overFlow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                    CustomRichText(
                                      textSpan1: 'Starting Bid: ',
                                      fontFamily1: poppinsMedium,
                                      fontSize1: Get.height * 0.01,
                                      color1: darkGrey,
                                      textAlign1: TextAlign.start,
                                      textSpan2: '\$${auctionProducts[index]["price"]}',
                                      fontFamily2: poppinsSemiBold,
                                      fontSize2: Get.height * 0.01,
                                      color2: homeBoxColor,
                                      textAlign2: TextAlign.start,
                                      overFlow2: TextOverflow.ellipsis,
                                      maxLines2: 1,
                                    ),
                                    SizedBox(height: Get.height * 0.005,),
                                    RatingWidget(
                                      initialRating: 4.5,
                                    ),
                                  ],
                                )
                            ),
                            Positioned(
                                top: Get.height * 0.195,
                                left: Get.width * 0.3,
                                child: GestureDetector(
                                  onTap:(){},
                                  child: Container(
                                    height: Get.height * 0.025,
                                    width: Get.width * 0.0795,
                                    decoration: BoxDecoration(
                                        color: homeBoxColor,
                                        borderRadius: BorderRadius.circular(
                                            Get.width * 0.01
                                        )
                                    ),
                                    child: Center(
                                        child: Image.asset(
                                          ImageUtils.technicianIcon1,
                                          height: Get.height * 0.0175,
                                        )
                                    ),
                                  ),
                                )
                            )
                          ]),
                    );
                  },
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}


