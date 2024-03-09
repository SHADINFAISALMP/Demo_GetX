import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:getx_demo/controllerss/list_controller.dart';
import 'package:getx_demo/controllerss/tap_controller%20.dart';

Future<void> init() async {
  Get.lazyPut(() => Tapcontroller());
  Get.lazyPut(() => ListController());
}
