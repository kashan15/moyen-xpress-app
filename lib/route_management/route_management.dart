
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:moyen_xpress_app/view/about/about_screen.dart';
import 'package:moyen_xpress_app/view/auction/auction_products.dart';
import 'package:moyen_xpress_app/view/authentication/new_login_screen.dart';
import 'package:moyen_xpress_app/view/store/store_home_screen.dart';

import '../components/custom_navbar.dart';
import '../components/custom_navbar1.dart';
import '../controller/home_controller.dart';
import '../utils/route_utils.dart';
import '../view/authentication/login_screen.dart';
import '../view/authentication/new_signup_screen.dart';
import '../view/authentication/signup_screen.dart';
import '../view/cart/my_cart.dart';
import '../view/categories/categories_details.dart';
import '../view/categories/categories_screen.dart';
import '../view/chat/chat_screen.dart';
import '../view/dashboard_tab_screen.dart';
import '../view/history/purchase history/purchase_history.dart';
import '../view/history/purchase history/purchase_history_details.dart';
import '../view/home/home_screen.dart';
import '../view/home/show_more.dart';
import '../view/notification/notification_screen.dart';
import '../view/onboard initial screen/initial_screen.dart';
import '../view/orders/my_order_details.dart';
import '../view/orders/my_orders.dart';
import '../view/orders/quote order/quote_order_details.dart';
import '../view/orders/shipping order/shipping_order_details.dart';
import '../view/orders/shipping order/shipping_orders.dart';
import '../view/payment/payment_method.dart';
import '../view/payment/payment_method_details.dart';
import '../view/profile/edit_account.dart';
import '../view/profile/profile_screen.dart';
import '../view/profile/settings/settings_screen.dart';
import '../view/quotes/shipping_quote_details.dart';
import '../view/splash/splash_screen.dart';
import '../view/store/store_screen.dart';
import 'controller_binding.dart';


class RouteManagement {
  HomeController homeController = Get.put(HomeController());
  static List<GetPage> getPages() {
    return [
      GetPage(
        name:   kHomeScreen,
        page: () =>  HomeScreen(image1: '',),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kLoginScreen,
        page: () =>  const LoginScreenNew(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kSplashScreen,
        page: () =>  const SplashScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kInitialScreen,
        page: () => InitialDetailScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kSettingsScreen,
        page: () =>  SettingsScreen1(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kMyOrdersScreen,
        page: () =>  MyOrdersScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kMyOrderDetailsScreen,
        page: () =>  MyOrderDetailsScreen(index: 0),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kPaymentScreen,
        page: () =>  PaymentScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kPurchaseHistory,
        page: () =>  PurchaseHistoryScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kPurchaseHistoryDetails,
        page: () =>  PurchaseHistoryDetailsScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kPaymentDetails,
        page: () =>  PaymentDetailsScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kStoreScreen,
        page: () =>  StoreScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kStoreHome,
        page: () =>  StoreHome(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kAboutScreen,
        page: () =>  AboutScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kAuctionScreen,
        page: () =>  AuctionScreen(),
        binding: ControllerBinding(),
      ),

      GetPage(
        name:   kShippingOrder,
        page: () =>  ShippingOrderScreen(check: false,),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kShippingOrderDetails,
        page: () =>  ShippingOrderDetailsScreen(check1: false,),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kQuoteOrderDetails,
        page: () =>  QuoteOrderDetailsScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kShippingQuoteDetails,
        page: () =>  ShippingQuoteDetailsScreen(),
        binding: ControllerBinding(),
      ),

      GetPage(
        name:   kSignupScreen,
        page: () =>  const SignupScreenNew(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kCategoryScreen,
        page: () => CategoriesScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kChatScreen,
        page: () => ChatScreen(),
        binding: ControllerBinding(),
      ),
      // GetPage(
      //   name:   kProductDetailsScreen,
      //   page: () => ProductDetails(),
      //   binding: ControllerBinding(),
      // ),
      GetPage(
        name:   kMyCartScreen,
        page: () => MyCart(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kProfileScreen,
        page: () => ProfileScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kEditAccount,
        page: () => EditAccountScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kCategoryDetails,
        page: () => CategoryDetailsScreen(),
        binding: ControllerBinding(),
      ),

      GetPage(
        name: kDashboardScreen,
        page: () =>  const DashboardTab(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name: kNotificationScreen,
        page: () => NotificationScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name: kShowMoreScreen,
        page: () => ShowMoreScreen(image1: ''),
        binding: ControllerBinding(),
      ),
      GetPage(
        name: kShowMoreScreen2,
        page: () => ShowMoreScreen2(image1: ''),
        binding: ControllerBinding(),
      ),
      GetPage(
        name: kShowMoreScreen3,
        page: () => ShowMoreScreen3(image1: ''),
        binding: ControllerBinding(),
      ),
      GetPage(
        name: kShowMoreScreen4,
        page: () => ShowMoreScreen4(image1: ''),
        binding: ControllerBinding(),
      ),
      GetPage(
        name: kShowMoreScreen5,
        page: () => ShowMoreScreen5(image1: ''),
        binding: ControllerBinding(),
      ),
      GetPage(
        name: kShowMoreScreen6,
        page: () => ShowMoreScreen6(image1: ''),
        binding: ControllerBinding(),
      ),

      GetPage(
        name: kNavBar,
        page: () => const CustomBottomTabBar(
            blockHeight: 16,
            blockWidth: 60
        ),
        binding: ControllerBinding(),
      ),

      GetPage(
        name: kNavBar1,
        page: () => const BottomNavBar(),
        binding: ControllerBinding(),
      ),
];
}}
