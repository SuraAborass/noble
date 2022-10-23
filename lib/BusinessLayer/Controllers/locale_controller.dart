import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../main.dart';

class MyLocaleController extends GetxController {
  late Locale? initalLang;
  @override
  void onInit() {
    initalLang = sharedpref!.getString("lang") != null
        ? (sharedpref!.getString("lang") == "en"
            ? const Locale("en", "US")
            : const Locale('ar', 'AR'))
        : Get.deviceLocale;
    update();

    super.onInit();
  }

  void changeLanguage(String codeLanguage) {
    Locale locale = Locale(codeLanguage);
    sharedpref!.setString("lang", codeLanguage);
    Get.updateLocale(locale);
  }
}


