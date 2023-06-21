import 'package:get/get.dart';
import 'package:moyen_xpress_app/controller/categories_controller.dart';
import 'package:moyen_xpress_app/controller/categories_details_controller.dart';
import 'package:moyen_xpress_app/controller/home_controller.dart';
import 'package:moyen_xpress_app/controller/login_screen_controller.dart';
import 'package:moyen_xpress_app/controller/navbar_controller.dart';
import 'package:moyen_xpress_app/controller/notification_controller.dart';
import 'package:moyen_xpress_app/controller/product_details_controller.dart';
import 'package:moyen_xpress_app/controller/signup_screen_controller.dart';
import 'package:moyen_xpress_app/controller/splash_screen_controller.dart';
import 'package:moyen_xpress_app/controller/tab_controller.dart';

import '../controller/dashboard_tab_controller.dart';


class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenController());
    Get.lazyPut(() => SignupScreenController());
    Get.lazyPut(() => SplashScreenController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CategoriesDetailsController());
    Get.lazyPut(() => NotificationController());
    Get.lazyPut(() => ProductDetailsController());
    Get.lazyPut(() => NavBarController());
    Get.lazyPut(() => DashboardTabController());
    Get.lazyPut(() => CategoriesController());

  }
}
