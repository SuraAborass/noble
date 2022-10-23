import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../BusinessLayer/Controllers/splash_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  SplashController controller = Get.put(SplashController());

  SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
          bottomNavigationBar: Obx(() {
            return SizedBox(
              width: double.infinity,
              height: 10,
              child: LinearProgressIndicator(
                  value: controller.progress.value,
                  minHeight: 5,
                  valueColor: const AlwaysStoppedAnimation(AppColors.orange),
                  backgroundColor: AppColors.blue,
                  color: AppColors.orange),
            );
          }),
          body: Container(
            color: AppColors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/nobleLogo.png",
                    width: Get.width / 3,
                  ),
                  Text("noble".tr, style: firstly),
                  Text("real_estate_service".tr, style: FifthStyle),
                ],
              ),
            ),
          )),
    );
  }
}
