import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalControl extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  changelanguage(String langaugeCode) {
    Locale locale = Locale(langaugeCode);
    myServices.sharedPreferences.setString("lang", langaugeCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedLanguage = myServices.sharedPreferences.getString("lang");
    if (sharedLanguage == "ar") {
      language = const Locale("ar");
    } else if (sharedLanguage == "en") {
      language = const Locale('en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
