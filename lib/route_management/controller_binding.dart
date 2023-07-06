import 'package:get/get.dart';
import 'package:moyen_xpress_app/controller/categories_controller.dart';
import 'package:moyen_xpress_app/controller/categories_details_controller.dart';
import 'package:moyen_xpress_app/controller/edit_account_controller.dart';
import 'package:moyen_xpress_app/controller/home_controller.dart';
import 'package:moyen_xpress_app/controller/login_screen_controller.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/controller/navbar_controller.dart';
import 'package:moyen_xpress_app/controller/notification_controller.dart';
import 'package:moyen_xpress_app/controller/payment_method_controller.dart';
import 'package:moyen_xpress_app/controller/product_details_controller.dart';
import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
import 'package:moyen_xpress_app/controller/settings_screen_controller.dart';
import 'package:moyen_xpress_app/controller/signup_screen_controller.dart';
import 'package:moyen_xpress_app/controller/splash_screen_controller.dart';
import 'package:moyen_xpress_app/controller/tab_controller.dart';
import 'package:moyen_xpress_app/controller/theme_controller.dart';
import 'package:moyen_xpress_app/view/chat/chat_controller.dart';
import 'package:moyen_xpress_app/view/profile/edit_account.dart';
import 'package:moyen_xpress_app/view/profile/settings/settings_screen.dart';
import 'package:moyen_xpress_app/view/purchase/purchase_history.dart';

import '../controller/dashboard_tab_controller.dart';
import '../controller/purchase_history_controller.dart';


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
    Get.lazyPut(() => MyCartController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => EditAccountController());
    Get.lazyPut(() => ChatController());
    Get.lazyPut(() => SettingsController());
    Get.lazyPut(() => ThemeController());
    Get.lazyPut(() => PaymentController());
    Get.lazyPut(() => PurchaseHistoryController());

  }
}
