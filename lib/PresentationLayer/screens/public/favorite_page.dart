import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/appbar.dart';
import '../../Widgets/drawer.dart';
import '../../Widgets/search_field.dart';
import '../../Widgets/title.dart';
import 'custom_botton_nav.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({
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
            pageTitle("favorites".tr, null),
          ],
        ),
      ),
    );
  }
}
