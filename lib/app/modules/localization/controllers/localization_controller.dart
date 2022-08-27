import 'dart:ui';

import 'package:get/get.dart';
import 'package:myproject/app/services/storage_service.dart';

class LocalizationController extends GetxController {
  //TODO: Implement LocalizationController

  final storage = Get.find<StorageService>();
  final RxString locale = Get.locale.toString().obs;

  final Map<String, dynamic> optionsLocales = {
    'en_US': {
      'languageCode': 'en',
      'countryCode': 'US',
      'description': 'English'
    },
    'bn_BD': {
      'languageCode': 'bn',
      'countryCode': 'BD',
      'description': 'Bangla'
    },
    'de_DE': {
      'languageCode': 'de',
      'countryCode': 'DE',
      'description': 'German'
    },
    'pt_BR': {
      'languageCode': 'pt',
      'countryCode': 'BR',
      'description': 'Português'
    },
  };
  void updateLocale(String key) {
    final String languageCode = optionsLocales[key]['languageCode'];
    final String countryCode = optionsLocales[key]['countryCode'];

    Get.updateLocale(Locale(languageCode, countryCode));
    locale.value = Get.locale.toString();

    storage.write('languageCode', languageCode);
    storage.write('countryCode', countryCode);
  }
}
