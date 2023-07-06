import 'package:flutter/material.dart';
import 'package:moyen_xpress_app/utils/image_utils.dart';
import 'package:moyen_xpress_app/utils/size_utils.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onMenuClicked;
   CustomAppbar({Key? key,
   required this.onMenuClicked
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
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: onMenuClicked,
                  child: Icon(
                      Icons.menu,
                      size: _height * 0.025,
                      color: Colors.black
                  ),
                )
              ],
            ),
          )
        ],
      );

  }
}
