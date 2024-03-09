import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_demo/helperr/init_dependency.dart';
import 'package:getx_demo/screenss/my_home_page.dart';
//import 'helperr/init_controllers.dart' as di;

Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: InitDep(),
        debugShowCheckedModeBanner: false,
        home: const Myhomepage());
  }
}
