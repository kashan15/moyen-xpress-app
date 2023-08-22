import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/controller/onboard_screen_controller.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';
import '../../components/custom_grid_button.dart';
import '../../components/custom_richtext.dart';
import '../../components/text_widget.dart';
import '../../controller/splash_screen_controller.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';
import '../../utils/theme.dart';

class OnboardingScreen3 extends GetView<OnboardScreenController> {
  const OnboardingScreen3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Stack(
          children:[
            _backgroundImage(),
            _body()
          ]),
    );
  }

  Widget _body(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
      child: Column(
        children: [
          SizedBox(height: Get.height * 0.075,),
          /// For Headings
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRichText(
                  textSpan1: 'Great',
                  fontFamily1: poppinsLight,
                  fontSize1: Get.height * 0.02,
                  color1: Colors.white,
                  textAlign1: TextAlign.start,
                  textSpan2: '\nPrices',
                  fontFamily2: poppinsBold,
                  fontSize2: Get.height * 0.03,
                  color2: Colors.white,
                  textAlign2: TextAlign.start,

                ),
                InkWell(
                  onTap: (){
                    Get.toNamed(kLoginScreen);
                  },
                  child: TextWidget(
                    textTitle: 'Skip',
                    fontFamily: poppinsMedium,
                    fontSize: Get.height * 0.02,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ]),

          Padding(
            padding: EdgeInsets.only(right: Get.width * 0.2),
            child: const Divider(
              color: Colors.white,
              thickness: 1,
            ),
          ),
          Row(
            children: [
              TextWidget1(
                textTitle: 'our app is price regulated you can\nnot find anything over priced.',
                style: CustomTheme.headingWhite,
              )
            ],
          ),
          const Spacer(),
          CustomButtonWithIcon(
            isSelected: false,
            margin: EdgeInsets.zero,
            width: double.infinity,
            onTap: (){
              Get.toNamed(kLoginScreen);
            },
            padding: EdgeInsets.symmetric(
              // horizontal: _width * 0.05,
                vertical: Get.height * 0.015
            ),
            title: 'Next',
            icon: ImageUtils.arrowForwardCircular,
            color: buyNow,
            textColor: Colors.white,
            fontSize: Get.height * 0.0225,
            fontFamily: poppinsRegular,
            borderRadius: Get.width * 0.012,
          ),
          SizedBox(height: Get.height * 0.035,),
        ],
      ),
    );
  }

  Widget _backgroundImage(){
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageUtils.onboard3),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
