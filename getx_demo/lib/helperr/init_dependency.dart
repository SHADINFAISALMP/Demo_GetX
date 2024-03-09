import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:getx_demo/controllerss/list_controller.dart';
import 'package:getx_demo/controllerss/tap_controller%20.dart';

class InitDep implements Bindings{
  @override
  void dependencies() {
      Get.lazyPut(() => Tapcontroller());
  Get.lazyPut(() => ListController());
  }
  
}