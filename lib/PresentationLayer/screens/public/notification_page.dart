import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Widgets/appbar.dart';
import '../../Widgets/drawer.dart';
import '../../Widgets/search_field.dart';
import '../../Widgets/title.dart';

import '../../Widgets/notifications_widgets.dart';
import 'custom_botton_nav.dart';

// ignore: must_be_immutable
class NotificationPage extends StatelessWidget {
  int notificationNumber = 11;
  NotificationPage({
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
            pageTitle("Notifications", null),
            NotificationBody()
          ],
        ),
      ),
    );
  }
}
