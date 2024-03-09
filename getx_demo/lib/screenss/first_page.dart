import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllerss/tap_controller%20.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {

     //this code we can access the homepage tapcontroller
    Tapcontroller controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            GetBuilder<Tapcontroller>(
              builder: (_) {
                return Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueAccent),
                  child: Center(
                      child: Text(
                    controller.x.toString(),
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  )),
                );
              },
            ),
            GestureDetector(
              onTap: () {
                controller.decreaseX();
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
                  "Decrease X",
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
