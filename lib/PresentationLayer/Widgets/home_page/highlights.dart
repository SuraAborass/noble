import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/office_controller.dart';
import '../../../BusinessLayer/Controllers/property_controller.dart';
import '../../../Constants/routes.dart';
import 'home_property.dart';

class HighLights extends StatelessWidget {
  final PropertyController propertyController = Get.find();
  final OfficesController officesController = Get.find();

  HighLights({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertyController>(
        init: propertyController,
        builder: (_) {
          return Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ListView.builder(
              itemCount: propertyController.properties.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.propertyScreen, arguments: [
                            propertyController.properties[i],
                            officesController.offices[0]
                          ]);
                        },
                        child: HomeProperty(
                            property: propertyController.properties[i])),
                  ),
                );
              },
            ),
          );
        });
  }
}
