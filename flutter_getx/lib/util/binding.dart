import 'package:flutter_getx/pages/home_screen/home_screen_controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenController());
  }
}
