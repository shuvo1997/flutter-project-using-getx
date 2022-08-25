import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myproject/app/languages.dart';
import 'package:myproject/theme-data.dart';

import 'app/routes/app_pages.dart';
import '';

void main() {
  runApp(
    GetMaterialApp(
      translations: Languages(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
    ),
  );
}
