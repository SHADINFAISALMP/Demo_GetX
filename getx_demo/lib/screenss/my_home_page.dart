import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllerss/tap_controller%20.dart';
import 'package:getx_demo/screenss/first_page.dart';
import 'package:getx_demo/screenss/second_page.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    //dependecncy injections  also change to anothr file init controllers 
    // Tapcontroller controller = Get.put(Tapcontroller());

    Tapcontroller controller = Get.find();
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Tapcontroller>(builder: (tapcontroller) {
              return Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                child: Center(
                    child: Text(
                  tapcontroller.x.toString(),
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )),
              );
            }),
            GestureDetector(
              onTap: () {
                controller.increaseX();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                child: const Center(
                    child: Text(
                  "Tap",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const Firstpage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                child: const Center(
                    child: Text(
                  "Go To First Page",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const Secondpage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                child: const Center(
                    child: Text(
                  "Go To Second Page",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                child: const Center(
                    child: Text(
                  "Tap",
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
