import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject/theme_data.dart';
import 'app/routes/app_pages.dart';
import 'app/services/storage_service.dart';
import 'languages.dart';

void main() async {
  await initialConfig();
  final storage = Get.find<StorageService>();

  runApp(
    GetMaterialApp(
      translations: Languages(),
      locale: storage.languageCode != null
          ? Locale(storage.languageCode!, storage.countryCode)
          : const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
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

Future<void> initialConfig() async {
  await Get.putAsync(() => StorageService().init());
}
