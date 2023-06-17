import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:moyen_xpress_app/components/custom_navbar.dart';
import 'package:moyen_xpress_app/view/authentication/login_screen.dart';
import 'package:moyen_xpress_app/view/authentication/signup_screen.dart';
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
        name: kDashboardScreen,
        page: () =>  const DashboardTab(),
        binding: ControllerBinding(),
      ),

      GetPage(
        name: kNavBar,
        page: () =>  CustomBottomTabBar(
            blockHeight: 16,
            blockWidth: 60
        ),
        binding: ControllerBinding(),
      ),

      GetPage(
        name: kNavBar1,
        page: () =>  BottomNavBar(),
        binding: ControllerBinding(),
      ),
];
}}
