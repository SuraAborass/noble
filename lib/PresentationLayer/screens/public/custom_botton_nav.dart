import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../../Constants/routes.dart';

import '../../../main.dart';

class CustomBottonNav extends StatelessWidget {
  const CustomBottonNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: BottomNavigationBar(
          selectedLabelStyle: Theme.of(context).textTheme.bodyLarge,
          unselectedLabelStyle: Theme.of(context).textTheme.bodyLarge,
          backgroundColor: AppColors.blue,
          currentIndex: MyApp.currentPage,
          onTap: (index) {
            MyApp.currentPage = index;
            switch (index) {
              case 0:
                Get.toNamed(AppRoutes.homepage);
                break;
              case 1:
                Get.toNamed(AppRoutes.notifications);
                break;
              case 2:
                Get.toNamed(AppRoutes.favorites);
                break;
              case 3:
                Get.toNamed(AppRoutes.profileScreen);
                break;
              default:
            }
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.5),
          items: [
            BottomNavigationBarItem(
                backgroundColor: AppColors.blue,
                icon: const Icon(Icons.home),
                label: "the_home".tr),
            BottomNavigationBarItem(
                backgroundColor: AppColors.blue,
                icon: const Icon(Icons.notifications),
                label: "the_notification".tr),
            BottomNavigationBarItem(
              backgroundColor: AppColors.blue,
              icon: const Icon(Icons.favorite_border),
              label: "the_favorite".tr,
            ),
            BottomNavigationBarItem(
                backgroundColor: AppColors.blue,
                icon: const Icon(Icons.person),
                label: "profile".tr),
          ]),
    );
  }
}
