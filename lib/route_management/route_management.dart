import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:moyen_xpress_app/components/custom_navbar.dart';
import 'package:moyen_xpress_app/view/authentication/login_screen.dart';
import 'package:moyen_xpress_app/view/authentication/signup_screen.dart';
import 'package:moyen_xpress_app/view/categories/categories_details.dart';
import 'package:moyen_xpress_app/view/categories/categories_screen.dart';
import 'package:moyen_xpress_app/view/notification/notification_screen.dart';
import 'package:moyen_xpress_app/view/products/product_details.dart';
import 'package:moyen_xpress_app/view/splash/splash_screen.dart';
import '../components/custom_navbar1.dart';
import '../utils/route_utils.dart';
import '../view/dashboard_tab_screen.dart';
import '../view/home/home_screen.dart';
import 'controller_binding.dart';


class RouteManagement {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name:   kHomeScreen,
        page: () =>  HomeScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kLoginScreen,
        page: () =>  const LoginScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kSplashScreen,
        page: () =>  const SplashScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kSignupScreen,
        page: () =>  const SignupScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kCategoryScreen,
        page: () => CategoriesScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kProductDetailsScreen,
        page: () => ProductDetails(),
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
