
import '../components/custom_navbar1.dart';
import '../utils/route_utils.dart';
import '../view/cart/my_cart.dart';
import '../view/dashboard_tab_screen.dart';
import '../view/home/home_screen.dart';
import '../view/onboard initial screen/initial_screen.dart';
import '../view/orders/my_orders.dart';
import '../view/profile/settings/settings_screen.dart';
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
        page: () =>  const LoginScreen(),
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
        page: () =>  const SignupScreen(),
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
