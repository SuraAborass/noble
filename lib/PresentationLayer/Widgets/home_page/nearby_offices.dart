import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/office_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/routes.dart';

import '../../../Constants/font_styles.dart';

class Nearbyoffices extends StatelessWidget {
  final OfficesController officesController = Get.find();

  Nearbyoffices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OfficesController>(
        init: officesController,
        builder: (_) {
          return Container(
            height: 125,
            width: Get.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: officesController.isLoading.value
                ? const SizedBox(
                    height: 100,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : ListView.builder(
                    itemCount: officesController.offices.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: AppColors.blue2,
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                              onTap: () {
                                Get.toNamed(AppRoutes.officeScreen,
                                    arguments: [officesController.offices[i]]);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            officesController.offices[i].logo),
                                        radius: 25,
                                        backgroundColor: Colors.white,
                                      ),
                                      Text(
                                        officesController.offices[i].name,
                                        style: seventh,
                                      ),
                                      const Text("دمشق", style: seventh),
                                    ]),
                              ),
                            )),
                      );
                    },
                  ),
          );
        });
  }
}
