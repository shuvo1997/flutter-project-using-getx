import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myproject/app/modules/home/views/home_view.dart';
import 'package:myproject/app/routes/app_pages.dart';

import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Counter is at ${controller.count}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                controller.increment();
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: const Text(
                'Increment',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(HomeView());
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: const Text(
                'Go to another page with back button',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.off(HomeView());
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: const Text(
                'Go to another page without back button',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.HOME);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: const Text(
                'Go to another page using named routes',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Obx(
              () => OutlinedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Text('Count is at ${controller.count}')),
            ),
          ],
        ),
      ),
    );
  }
}
