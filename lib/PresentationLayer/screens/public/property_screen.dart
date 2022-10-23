import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';

import '../../../DataAccessLayer/Models/property.dart';
import '../../Widgets/property_page_widgets.dart';

class PropertyScreen extends StatelessWidget {
  final Property propety = Get.arguments[0];
  PropertyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.blue, borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("buy_the_realstate".tr, style: sixthly),
            )),
          ),
        ),

        body: SliverAppBarProperty(
          propety: propety,
        ),
      ),
    );
  }
}
