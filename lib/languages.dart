import 'package:get/get.dart';
import 'package:myproject/language_keys.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          LanguageKeys.greeting: 'Hello',
          LanguageKeys.welcome: 'Welcome to this application',
          LanguageKeys.description: 'You are seeing an example of localization',
          LanguageKeys.appbar: 'Localization example',
          LanguageKeys.updateLocale: 'Update Locale',
        },
        'bn_BD': {
          LanguageKeys.greeting: 'অভিবাদন',
          LanguageKeys.welcome: 'এই অ্যাপ্লিকেশনে স্বাগতম',
          LanguageKeys.description: 'আপনি স্থানীয়করণের একটি উদাহরণ দেখছেন',
          LanguageKeys.appbar: 'স্থানীয়করণের উদাহরণ',
          LanguageKeys.updateLocale: 'লোকেল আপডেট করুন'
        },
      };
}
