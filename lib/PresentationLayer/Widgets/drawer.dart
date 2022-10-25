import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../BusinessLayer/Controllers/box_controller.dart';
import '../../BusinessLayer/Controllers/categories_controller.dart';
import '../../BusinessLayer/helpers/image_helper.dart';
import '../../Constants/api_links.dart';
import '../../Constants/routes.dart';
import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';
import '../../theme_service.dart';





class MyDrawer extends StatelessWidget {
  MyDrawer({
    Key? key,
  }) : super(key: key);
  final BoxContoller boxContoller = Get.find();
  final CategoriesController categoriesController = Get.find();
  final themeData = Get.isDarkMode ? ThemeData.dark() : ThemeData.light();
  final ThemeService _themeService = Get.find();


  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      child: GetBuilder(
          init: boxContoller,
          builder: (_) {
            return ListView(
              children: [
                UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: AppColors.blue),
                  accountName: Text(
                      boxContoller.user != null
                          ? boxContoller.user!.name
                          : "Noble User",
                      style: Theme.of(context).textTheme.bodyLarge),
                  accountEmail: Text(
                    boxContoller.user != null
                        ? boxContoller.user!.mobileNumber
                        : "",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: AppColors.orange,
                    backgroundImage: boxContoller.user != null
                        ? CachedNetworkImageProvider(ApiLinks.storageUrl +
                            ImageHelper.buildImage(boxContoller.user!.avatar))
                        : null,
                  ),
                ),
                ListTile(
                  title: Text(
                    "home".tr,
                    style: Theme.of(context).textTheme.bodySmall,

                  ),
                  leading: const Icon(
                    Icons.home,
                    color: AppColors.lightgrey,
                  ),
                  onTap: () {
                    Get.toNamed(AppRoutes.homepage);

                  },
                ),
                ListTile(
                  title: Text(
                    "profile".tr,
                     style: Theme.of(context).textTheme.bodySmall,
                               ),
                  leading: const Icon(
                    Icons.person,
                    color: AppColors.lightgrey,
                  ),
                  onTap: () {
                    Get.toNamed(AppRoutes.profileScreen);
                  },
                ),
                ListTile(
                  title: Text(
                    "addnewproperty".tr,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  leading: const Icon(
                    Icons.add_box,
                    color: AppColors.lightgrey,
                  ),
                  onTap: () {
                    Get.toNamed(AppRoutes.addPropertyScreen);
                  },
                ),
                ExpansionTile(
                  title: Text(
                    "ads".tr,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  leading: const Icon(
                    Icons.shop_outlined,
                    color: AppColors.orange,
                  ),
                  children: [
                    ListTile(
                      title: Text(
                        "realestate".tr,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      leading: const Icon(
                        Icons.house,
                        color: AppColors.lightgrey,
                      ),
                      onTap: () {
                        Get.toNamed(AppRoutes.latestproperties);
                      },
                    ),
                    for (var item in categoriesController.categories)
                      ListTile(
                          title: Text(
                            item.name,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          leading: item.image != ''
                              ? Image.network(
                                  item.image,
                                  width: 25,
                                )
                              : const Icon(
                                  Icons.account_box,
                                  color: AppColors.lightgrey,
                                ),
                          onTap: () {
                            Get.toNamed(AppRoutes.categotyScreen,
                                arguments: [item]);
                          }),
                  ],
                ),
                ListTile(
                  onTap: () {
                    Get.defaultDialog(
                        title: 'Choose Language',
                        titleStyle: Theme.of(context).textTheme.bodyLarge,
                        content: Column(
                          children: [
                            ListTile(
                              title: const Text("Arabic"),
                              onTap: () {
                                Get.back();
                                boxContoller.saveLocale("ar");
                              },
                            ),
                            ListTile(
                              title: const Text("English"),
                              onTap: () {
                                boxContoller.saveLocale("en");
                                Get.back();
                              },
                            )
                          ],
                        ));
                  },
                  title: Text("language".tr, style: Theme.of(context).textTheme.bodySmall),
                  leading: const Icon(
                    Icons.language,
                    color: AppColors.lightgrey,
                  ),
                ),
                ListTile(
                  title: Text(  themeData == ThemeData.dark()  ? 'Light Theme' : 'Dark Theme',
                      style: Theme.of(context).textTheme.bodySmall),
                  leading:
                      Icon(Theme.of(context).brightness==Brightness.light? Icons.dark_mode_rounded : Icons.light_mode_rounded,color: AppColors.lightgrey),
                  onTap: () {
                    if (Get.isDarkMode) {
                      Get.changeThemeMode(ThemeMode.light);
                    } else {
                      Get.changeThemeMode(ThemeMode.dark);
                    }
                    _themeService.switchTheme();
            }),
                ListTile(
                  title: Text(
                    "about".tr,
                    style: Theme.of(context).textTheme.bodySmall,

                  ),
                  leading: const Icon(
                    Icons.help,
                    color: AppColors.lightgrey,
                  ),
                  onTap: () {
                    Get.toNamed(AppRoutes.about);
                  },
                ),
                ListTile(
                  title: Text(
                    "logout".tr,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  leading: const Icon(
                    Icons.logout,
                    color: AppColors.lightgrey,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
