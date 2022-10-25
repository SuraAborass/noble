import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/box_controller.dart';
import '../../../BusinessLayer/Controllers/profile_screen_controller.dart';

import '../../../BusinessLayer/helpers/image_helper.dart';

import '../../../Constants/font_styles.dart';
import '../../Widgets/appbar.dart';
import '../../Widgets/login_widgets.dart';
import '../../Widgets/drawer.dart';
import '../../Widgets/title.dart';
import '../../../Constants/api_links.dart';
import '../../../Constants/colors.dart';
import '../../Widgets/text_fields.dart';
import 'custom_botton_nav.dart';

class ProfileScreen extends StatelessWidget {
  final BoxContoller boxContoller = Get.find();
  final ProfileScreenController profileScreenController =
      Get.put(ProfileScreenController());

  ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: const CustomBottonNav(),
        backgroundColor: context.theme.backgroundColor,
        drawer: MyDrawer(),
        appBar: customAppBar(context),
        body: GetBuilder(
            init: profileScreenController,
            builder: (_) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: boxContoller.user == null
                    ? Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text(
                                "There Is No Account , Login To Continue",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                      )
                    : SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            pageTitle("profile".tr, null),
                            Center(
                              child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: CachedNetworkImageProvider(
                                      ImageHelper.buildImage(
                                          ApiLinks.storageUrl +
                                              boxContoller.user!.avatar))),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "name".tr,
                                    style:  Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  ProfileTextfield(
                                    controller:
                                        profileScreenController.nameController,
                                    hint: "",
                                    obsecure: false,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "mobilenumber".tr,
                                    style:  Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  ProfileTextfield(
                                    controller:
                                        profileScreenController.emailController,
                                    hint: "",
                                    obsecure: false,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "passowrd".tr,
                                    style:  Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  ProfileTextfield(
                                    controller: profileScreenController
                                        .passwordController,
                                    hint: "keepitempty".tr,
                                    obsecure: true,
                                  ),
                                ],
                              ),
                            ),
                            Obx(() {
                              return InkWell(
                                onTap: () async {
                                  await profileScreenController.updateInfo();
                                },
                                child: Button(
                                  text1: "editprofiledata".tr,
                                  buttonColor: AppColors.orange,
                                  textColor: AppColors.lightwhite,
                                  loading: profileScreenController.loading.value
                                      ? true
                                      : false,
                                  loadingText:
                                      profileScreenController.loading.value
                                          ? "editng".tr
                                          : "",
                                ),
                              );
                            }),
                            InkWell(
                              onTap: () async {
                                await profileScreenController.logout();
                              },
                              child: Button(
                                text1: "logout".tr,
                                buttonColor: AppColors.lightgrey,
                                textColor: Colors.white,
                                loading: false,
                                loadingText: "",
                              ),
                            )
                          ],
                        ),
                      ),
              );
            }),
      ),
    );
  }
}
