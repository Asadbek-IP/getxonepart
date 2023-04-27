import 'package:get/get.dart';
import 'package:getxonepart/controller/home_page_controller.dart';

class BindingService implements Bindings {
  @override
  void dependencies() {
     Get.put<HomeController>(HomeController());
  }
}
