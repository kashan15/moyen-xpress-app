import 'package:get/get.dart';
import 'package:moyen_xpress_app/controller/about_screen_controller.dart';
import 'package:moyen_xpress_app/controller/auction_products_controller.dart';
import 'package:moyen_xpress_app/controller/categories_controller.dart';
import 'package:moyen_xpress_app/controller/categories_details_controller.dart';
import 'package:moyen_xpress_app/controller/drawer_controller.dart';
import 'package:moyen_xpress_app/controller/edit_account_controller.dart';
import 'package:moyen_xpress_app/controller/home_controller.dart';
import 'package:moyen_xpress_app/controller/login_screen_controller.dart';
import 'package:moyen_xpress_app/controller/my_cart_controller.dart';
import 'package:moyen_xpress_app/controller/my_orders_controller.dart';
import 'package:moyen_xpress_app/controller/navbar_controller.dart';
import 'package:moyen_xpress_app/controller/notification_controller.dart';

import 'package:moyen_xpress_app/controller/payment_method_controller.dart';

import 'package:moyen_xpress_app/controller/product_details_controller.dart';
import 'package:moyen_xpress_app/controller/profile_screen_controller.dart';
import 'package:moyen_xpress_app/controller/purchase_history_controller.dart';
import 'package:moyen_xpress_app/controller/purchase_history_details_controller.dart';
import 'package:moyen_xpress_app/controller/quote_order_details_controller.dart';
import 'package:moyen_xpress_app/controller/settings_screen_controller.dart';
import 'package:moyen_xpress_app/controller/shipment_form_controller.dart';
import 'package:moyen_xpress_app/controller/shipping_order_details_controller.dart';
import 'package:moyen_xpress_app/controller/show_more_controller.dart';
import 'package:moyen_xpress_app/controller/signup_screen_controller.dart';
import 'package:moyen_xpress_app/controller/splash_screen_controller.dart';
import 'package:moyen_xpress_app/controller/store_home_controller.dart';
import 'package:moyen_xpress_app/controller/store_screen_controller.dart';
import 'package:moyen_xpress_app/controller/technician_search_controller.dart';
import 'package:moyen_xpress_app/controller/theme_controller.dart';
import 'package:moyen_xpress_app/view/chat/chat_controller.dart';
import '../controller/dashboard_tab_controller.dart';
import '../controller/initial_screen_controller.dart';
import '../controller/my_order_details_controller.dart';
import '../controller/shipment_description_controller.dart';
import '../controller/shipping_From_controller.dart';
import '../controller/shipping_orders_controller.dart';
import '../controller/shipping_quote_details_controller.dart';


class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenController());
    Get.lazyPut(() => SignupScreenController());
    Get.lazyPut(() => SplashScreenController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CategoriesDetailsController());
    Get.lazyPut(() => InitialDetailScreenController());
    Get.lazyPut(() => NotificationController());
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
    Get.lazyPut(() => MyOrdersController());
    Get.lazyPut(() => MyOrderDetailsController());
    Get.lazyPut(() => ProductDetailsController());
    Get.lazyPut(() => DrawerScreenController());
    Get.lazyPut(() => ShippingOrderController());
    Get.lazyPut(() => ShippingOrderDetailsController());
    Get.lazyPut(() => QuoteOrderDetailsController());
    Get.lazyPut(() => ShippingQuoteDetailsController());
    Get.lazyPut(() => PurchaseHistoryController());
    Get.lazyPut(() => PurchaseHistoryDetailsController());
    Get.lazyPut(() => ShowMoreController());
    Get.lazyPut(() => StoreScreenController());
    Get.lazyPut(() => StoreHomeController());
    Get.lazyPut(() => AboutScreenController());
    Get.lazyPut(() => AuctionScreenController());
    Get.lazyPut(() => ShipmentFormController());
    Get.lazyPut(() => ShippingFromController());
    Get.lazyPut(() => ShipmentDescriptionController());
    Get.lazyPut(() => TechnicianSearchController());
  }
}
