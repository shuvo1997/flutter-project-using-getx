import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myproject/app/modules/counter/views/counter_view.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'SplashScreenView is working',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
                onPressed: () {
                  Get.off(CounterView());
                },
                child: Text('Get off ')),
            TextButton(
                onPressed: () {
                  Get.offAll(CounterView());
                },
                child: Text('Get off all')),
          ],
        ),
      ),
    );
  }
}
