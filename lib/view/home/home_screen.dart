import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:moyen_xpress_app/components/custom_appbar.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';

import '../../controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.globalContext = context;
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppbar(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: _height * 0.2,
              //color: Colors.yellow,
              decoration: const BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(image: AssetImage(
                  ImageUtils.homeBanner
                ),
                fit: BoxFit.fill
                )
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              children:[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextWidget(
                  textTitle: 'Categories',
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
              ),
                ),
           ]),
        const SizedBox(height: 10,),
        Flexible(
          child: ListView.builder(
            //physics: const ScrollPhysics(),
            scrollDirection: Axis.horizontal,
              //shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: _height * 0.075,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle
                  ),
                );
              }),
        ),
          ],
        ),
      ),
    );
  }
}
