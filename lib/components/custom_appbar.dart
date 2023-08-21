import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moyen_xpress_app/components/text_widget.dart';
import 'package:moyen_xpress_app/utils/font_utils.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/size_utils.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onMenuClicked;
   CustomAppbar({Key? key,
    this.onMenuClicked
   }) : super(key: key);


  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.black,
        title: Image.asset(
          ImageUtils.logo,
          height: _height * 0.05
        ),
      automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                //const SizedBox(width: 20),
                Icon(
                  Icons.search,
                  size: _height * 0.025,
                   color: Colors.black,

                ),
                // const SizedBox(width: 10),
                IconButton(onPressed: onMenuClicked,
                    constraints: const BoxConstraints(),
                    icon: Icon(
                      Icons.menu,
                      size: _height * 0.025,
                      color: Colors.black,
                    ))
              ],
            ),
          )
        ],
      );

  }
}

class CustomAppbar1 extends StatelessWidget implements PreferredSizeWidget {
String? heading;
CustomAppbar1({Key? key,
  this.heading
}) : super(key: key);


@override
Size get preferredSize => Size.fromHeight(kToolbarHeight);

@override
Widget build(BuildContext context) {
  double _height = MediaQuery.of(context).size.height;
  double _width = MediaQuery.of(context).size.width;
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    shadowColor: Colors.transparent,
    title: Row(
      children: [
        IconButton(
            padding: EdgeInsets.only(left: _width * 0.0),
            constraints: const BoxConstraints(),
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: _height * 0.025,
              color: Colors.black,
            )),
        Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  textTitle: heading,
                  fontWeight: FontWeight.w700,
                  fontSize: _height * 0.025,
                  fontFamily: poppinsMedium,
                  color: Colors.black,
                ),
              ],
            ))
      ],
    ),
    automaticallyImplyLeading: false,
  );

}
}
