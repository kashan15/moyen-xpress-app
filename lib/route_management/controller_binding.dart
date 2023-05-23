import 'package:get/get.dart';
import 'package:moyen_xpress_app/controller/home_controller.dart';


class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());

  }
}
