import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/font_styles.dart';

import '../../Widgets/appbar.dart';
import '../../Widgets/drawer.dart';
import '../../Widgets/search_field.dart';
import '../../Widgets/title.dart';
import 'custom_botton_nav.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        bottomNavigationBar: const CustomBottonNav(),
        backgroundColor: context.theme.backgroundColor,
        drawer: MyDrawer(),
        appBar: customAppBar(context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchField(),
            pageTitle("aboutus".tr, null),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/launcher_icon.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  Text(
                    "aboutdesc".tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
