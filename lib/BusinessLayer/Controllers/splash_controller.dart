// ignore_for_file: avoid_print

import 'dart:async';

import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/box_controller.dart';
import 'package:noble/Constants/routes.dart';

class SplashController extends GetxController {
  var progress = 0.0.obs;
  var duration = const Duration(milliseconds: 50);
  final BoxContoller boxContoller = Get.find();
  late Timer timer;
  @override
  void onInit() async {
    bool? authed = boxContoller.authed;
    timer = Timer.periodic(duration, (timer) {
      if (progress.value < 1) {
        progress.value = progress.value + 0.01;
        print(progress.value);
      } else {
        timer.cancel();
        if (authed != null && authed == true) {
          Get.offAndToNamed(AppRoutes.homepage);
        } else {
          Get.offAndToNamed(AppRoutes.onBoardingScreen);
        }
      }
    });

    super.onInit();
  }
}
