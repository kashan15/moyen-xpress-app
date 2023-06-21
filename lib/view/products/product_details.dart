import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/components/custom_textfield.dart';
import 'package:moyen_xpress_app/controller/product_details_controller.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';

import '../../components/custom_textfield1.dart';

class ProductDetails extends GetView<ProductDetailsController> {
  int? a;
 ProductDetails({super.key,
   this.a
});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    controller.globalContext = context;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: _height * 0.05,),
          Padding(padding: EdgeInsets.symmetric(horizontal: _width * 0.04),
          child: Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: (){},
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
          SizedBox(
            height: _height * 0.05,
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: _width * 0.05),
                padding: EdgeInsets.symmetric(horizontal: _width * 0.04, vertical: _height * 0.04),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(_width * 0.02)
                ),
                height: _height * 0.35,
                width: double.infinity,
              ),
              Positioned(
                top: _height * 0.01,
                left: _width * 0.24,
                child: Container(
                  height: _height * 0.225,
                  width: _width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: const DecorationImage(image: AssetImage(
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
              )
            ],
          )
        ],
      ),
    );
  }
}
