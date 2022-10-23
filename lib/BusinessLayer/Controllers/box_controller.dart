// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:noble/DataAccessLayer/Models/user.dart';

class BoxContoller extends GetxController {
  final box = GetStorage();
  bool? authed = false;
  late User? user;
  late String locale = "ar";


  @override
  void onInit() {
    super.onInit();
    user = null;
    authed = box.read<bool>('authed');
    if (authed != null && authed == true) {
      user = User.fromBoxMap(box.read('user'));
      print(user);
    }

    Get.locale = box.read('locale') != null
        ? Locale.fromSubtags(languageCode: box.read('locale'))
        : Get.deviceLocale;

  }

  Future<void> saveLocale(String locale) async {
    box.write('locale', locale);
    Get.updateLocale(Locale.fromSubtags(languageCode: locale));
    update();
  }


}
