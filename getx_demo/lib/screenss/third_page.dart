import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllerss/list_controller.dart';
import 'package:getx_demo/controllerss/tap_controller%20.dart';
import 'package:getx_demo/screenss/my_home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    //this code we can access the homepage tapcontroller
    //  Tapcontroller controller = Get.find();

    //dependency injections
    // ListController listController = Get.put(ListController());
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent),
                    child: Center(
                        //this is the another way to get the value withoust using the under widget instance controller
                        child: Text(
                      "Total value ${Get.find<Tapcontroller>().z.toString()}",
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent),
                    child: Center(
                        //this is the another way to get the value withoust using the under widget instance controller
                        child: Text(
                      "Y value  ${Get.find<Tapcontroller>().y.value}",
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const Myhomepage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                child: Center(
                    //this is the another way to get the value withoust using the under widget instance controller
                    child: Text(
                  "X value  ${Get.find<Tapcontroller>().x}",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(() => const Myhomepage());
                Get.find<Tapcontroller>().increasey();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                child: const Center(
                    //this is the another way to get the value withoust using the under widget instance controller
                    child: Text(
                  " Increase Y",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(() => const Myhomepage());
                Get.find<Tapcontroller>().totalXY();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                child: const Center(
                    //this is the another way to get the value withoust using the under widget instance controller
                    child: Text(
                  "Total X+Y",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(() => const Myhomepage());
                Get.find<ListController>()
                    .setvalues(Get.find<Tapcontroller>().z);
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                child: const Center(
                    //this is the another way to get the value withoust using the under widget instance controller
                    child: Text(
                  "Save Total",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
