import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myproject/language_keys.dart';

import '../controllers/localization_controller.dart';

class LocalizationView extends GetView<LocalizationController> {
  LocalizationView({Key? key}) : super(key: key);
  final List locales = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'বাংলা', 'locale': const Locale('bn', 'BD')},
  ];

  buildDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: const Text('Choose a language'),
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            controller.updateLocale(
                                locales[index]['locale'].toString());
                            Get.back();
                          },
                          child: Text(locales[index]['name'])),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: locales.length),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageKeys.appbar.tr),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LanguageKeys.greeting.tr,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              LanguageKeys.welcome.tr,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              LanguageKeys.description.tr,
              style: const TextStyle(fontSize: 20),
            ),
            TextButton(
                onPressed: () {
                  buildDialog(context);
                },
                child: Text(
                  LanguageKeys.updateLocale.tr,
                  style: const TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
