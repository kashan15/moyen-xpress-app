import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/splash_screen_controller.dart';

class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    controller.imageName;
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Image.asset("assets/images/full_splash_image.jpg",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }


}
