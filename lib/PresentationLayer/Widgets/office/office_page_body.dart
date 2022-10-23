import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maps_launcher/maps_launcher.dart';
import '../../../BusinessLayer/Controllers/office_page_controller.dart';
import '../../../Constants/font_styles.dart';
import '../../../DataAccessLayer/Models/office.dart';
import '../center_progresss.dart';
import '../properties/property_row.dart';
import '../title.dart';

import '../../../Constants/colors.dart';

class OfficeBody extends StatelessWidget {
  OfficeBody({Key? key, required this.office}) : super(key: key);
  final Office office;
  final OfficePageController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(children: [
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0XFFEDF1FD)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "address".tr,
                          style: SecondStyle,
                        ),
                        Text(office.address, style: thirdly),
                      ]),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        if (office.lat != null) {
                          MapsLauncher.launchCoordinates(
                              office.lat!, office.long!);
                        }
                      },
                      icon: const Icon(
                        Icons.location_on,
                        color: AppColors.blue,
                        size: 35,
                      ))
                ]),
              ),
            )
          ]),
        ),
        pageTitle("last_properties".tr, null),
        GetBuilder(
            init: controller,
            builder: (_) {
              return SizedBox(
                height: controller.isLoading.value &&
                        controller.properties.isNotEmpty
                    ? controller.properties.length * 120
                    : 200,
                child: controller.isLoading.value
                    ? centerProgress()
                    : ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: controller.properties.length,
                        itemBuilder: (context, i) {
                          return PropertyRow(
                              property: controller.properties[i]);
                        },
                      ),
              );
            })
      ],
    );
  }
}
