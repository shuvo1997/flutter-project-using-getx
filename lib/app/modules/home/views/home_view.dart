import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myproject/app/modules/counter/controllers/counter_controller.dart';
import 'package:myproject/app/modules/splash_screen/views/splash_screen_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  CounterController counterController = Get.find();
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Text(
                'Counter is ${counterController.count}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
                onPressed: () {
                  counterController.count++;
                  Get.snackbar(
                      'Test Snackbar', 'Counter is ${counterController.count}');
                },
                child: const Text(
                  'Show SnackBar',
                  style: TextStyle(fontSize: 20),
                )),
            TextButton(
                onPressed: () {
                  counterController.count++;
                  Get.defaultDialog(
                    title: 'Test Dialoge',
                    middleText: 'This is middle text',
                    buttonColor: Colors.green,
                    textCancel: 'Cancel',
                    textConfirm: 'confirm',
                    onConfirm: () {
                      counterController.count++;
                    },
                  );
                },
                child: const Text(
                  'Show dialogue',
                  style: TextStyle(fontSize: 20),
                )),
            ObxValue(
                (data) => Column(
                      children: [
                        Text(
                            'The current theme is ${homeController.isDarkTheme.value}'),
                        Switch(
                            value: homeController.isDarkTheme.value,
                            onChanged: (val) {
                              homeController.isDarkTheme.value = val;
                              homeController.changeCurrentTheme();
                            }),
                      ],
                    ),
                false.obs),
            TextButton(
                onPressed: () {
                  // Get.back();
                  Get.to(SplashScreenView());
                },
                child: Text('Go to Splash Screen')),
          ],
        ),
      ),
    );
  }
}
