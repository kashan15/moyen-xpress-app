import 'package:get/get.dart';
import 'package:moyen_xpress_app/controller/home_controller.dart';
import 'package:moyen_xpress_app/controller/navbar_controller.dart';
import 'package:moyen_xpress_app/controller/tab_controller.dart';

import '../controller/dashboard_tab_controller.dart';


class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => NavBarController());
    Get.lazyPut(() => DashboardTabController());

  }
}
