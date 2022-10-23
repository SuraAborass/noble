import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/property_controller.dart';
import '../../../Constants/colors.dart';
import '../../Widgets/center_progresss.dart';
import '../../Widgets/drawer.dart';
import '../../Widgets/properties/property_row.dart';
import '../../Widgets/search_field.dart';
import '../../Widgets/title.dart';
import 'custom_botton_nav.dart';

import '../../Widgets/appbar.dart';

class LatestProperties extends StatelessWidget {
  LatestProperties({Key? key}) : super(key: key);
  final PropertyController propertyController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      drawer: MyDrawer(),
      bottomNavigationBar: const CustomBottonNav(),
      backgroundColor: context.theme.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SearchField(),
            pageTitle("latestproperties".tr, null),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              height: Get.height - 350,
              child: propertyController.isLoading.value
                  ? centerProgress()
                  : ListView.builder(
                      itemCount: propertyController.properties.length,
                      itemBuilder: (_, index) {
                        return PropertyRow(
                            property: propertyController.properties[index]);
                      }),
            )
          ],
        ),
      ),
    );
  }
}
