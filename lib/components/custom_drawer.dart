import 'package:flutter/material.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';

class CustomDrawer extends StatelessWidget {
   CustomDrawer({Key? key}) : super(key: key);

  List drawerItemList = [
    {
      "icon": ImageUtils.homeIconDrawer,
      "name": "Home"
    },
    {
      "icon": ImageUtils.storeIcon,
      "name": "Stores"
    },{
      "icon": ImageUtils.aboutIcon,
      "name": "About"
    },{
      "icon": ImageUtils.phoneIcon,
      "name": "Contact"
    },{
      "icon": ImageUtils.shippingIcon,
      "name": "Shipping"
    },{
      "icon": ImageUtils.technicianIcon,
      "name": "Technician"
    },
    {
      "icon": ImageUtils.advertiserIcon,
      "name": "Advertiser"
    },
    {
      "icon": ImageUtils.sellerIcon,
      "name": "Seller"
    },
    {
      "icon": ImageUtils.auctionIcon,
      "name": "Auction"
    },{
      "icon": ImageUtils.wholesaleIcon,
      "name": "Wholesale"
    },

  ];

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: _width * 0.8,
      child: Drawer(
        backgroundColor: homeBoxColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: _height * 0.05,),
              Container(
                width: double.infinity,
                height: _height * 0.125,
                margin: EdgeInsets.symmetric(horizontal: _width * 0.035,),
                padding: EdgeInsets.symmetric(horizontal: _width * 0.15, vertical: _height * 0.8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(_width * 0.02),
                  image: DecorationImage(
                      image: AssetImage(ImageUtils.drawerImage),
                  fit: BoxFit.cover
                  )
                ),
              ),
              SizedBox(height: 10,),

              // ListView.separated(
              //   padding: EdgeInsets.symmetric(vertical: 12),
              //   physics: const NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   itemCount: drawerItemList.length,
              //   itemBuilder: (context, index) {
              //     return Container(
              //       padding: EdgeInsets.symmetric(horizontal: 12),
              //       child: Row(
              //         children: [
              //           Image.asset(
              //             drawerItemList[index]["icon"],
              //             height: 20,
              //           ),
              //           SizedBox(width: 8,),
              //           TextWidget(
              //             textTitle: drawerItemList[index]["name"],
              //             color: Colors.white,
              //             fontFamily: montserratSemiBold,
              //             // fontWeight: FontWeight.w900,
              //             fontSize: 15,
              //           ),
              //         ],
              //       ),
              //     );
              //   },
              //   separatorBuilder: (context, index) {
              //     return SizedBox(height: _height * 0.05,
              //       child: Divider(
              //         color: Colors.grey,
              //         thickness: 1,
              //       ),
              //     );
              //   },
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
