import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myproject/app/modules/fetch_list/bindings/fetch_list_binding.dart';
import 'package:myproject/app/modules/fetch_list/views/fetch_list_view.dart';
import 'package:myproject/app/modules/home/bindings/home_binding.dart';
import 'package:myproject/app/modules/home/views/home_view.dart';
import 'package:myproject/app/routes/app_pages.dart';

import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({Key? key}) : super(key: key);

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      controller.increment();
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Increment',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      Get.to(() => HomeView(), binding: HomeBinding());
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Go to another page',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      Get.off(() => HomeView());
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Get.off()',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.HOME);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Get.toNamed()',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Obx(
              () => OutlinedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Text('Count is at ${controller.count}')),
            ),
            OutlinedButton(
                onPressed: () {
                  Get.to(() => FetchListView());
                },
                child: const Text('Fetch list of data')),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.LOCALIZATION);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: const Text(
                'Go to Localization',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
