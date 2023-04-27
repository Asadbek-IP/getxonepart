import 'package:get/get.dart';
import 'package:getxonepart/controller/home_page_controller.dart';

class DIService{

  static Future<void> init() async{
    Get.lazyPut(() => HomeController(),fenix: false);
  }

}