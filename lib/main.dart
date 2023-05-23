import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moyen_xpress_app/route_management/route_management.dart';
import 'package:moyen_xpress_app/utils/color_utils.dart';
import 'package:moyen_xpress_app/utils/route_utils.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Moyen Xpress App',
            theme:
            ThemeData(
              primarySwatch: primaryColorSwatch,
              fontFamily:'Nexa',
            ),
            initialRoute: kWelcomeScreen,
            getPages: RouteManagement.getPages(),

            // initialBinding: ControllerBinding(),
          );
        }
    );
  }
}
