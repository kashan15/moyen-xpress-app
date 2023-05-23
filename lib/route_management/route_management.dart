import 'package:get/get_navigation/src/routes/get_route.dart';
import '../utils/route_utils.dart';
import '../view/home/home_screen.dart';
import 'controller_binding.dart';


class RouteManagement {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name: kHomeScreen,
        page: () => const HomeScreen(),
        binding: ControllerBinding(),
      ),
];
}}
