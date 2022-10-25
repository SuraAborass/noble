import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../BusinessLayer/Controllers/back_notification_controller.dart';

import '../../Constants/font_styles.dart';

class NotificationBody extends StatelessWidget {
  final BackNotificationController notController = Get.find();
  NotificationBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BackNotificationController>(
        init: notController,
        builder: (_) {
          return Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, i) {
                return ListTile(
                    onTap: () {},
                    title: Text(
                      notController.backNotifications[i].message,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    subtitle: Text(
                      notController.backNotifications[i].createdAt,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(photo[0]),
                    ));
              },
              itemCount: notController.backNotifications.length,
            ),
          );
        });
  }
}

List<String> photo = ["assets/images/person.jpg"];

class NotificationTextfield extends StatelessWidget {
  const NotificationTextfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        style: Theme.of(context).textTheme.bodySmall,
        decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            fillColor: const Color(0XFFF8F8F8),
            prefixIcon: const Icon(Icons.search, color: Color(0XFF0C3877)),
            hintText: "search_in_notification".tr,
            hintStyle: Theme.of(context).textTheme.bodyText1,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Color(0XFFD2D2D2))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Color(0XFFD2D2D2)))),
      ),
    );
  }
}
