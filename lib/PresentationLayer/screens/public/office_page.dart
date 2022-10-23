import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/office_page_controller.dart';
import '../../../BusinessLayer/Controllers/property_controller.dart';
import '../../../DataAccessLayer/Models/office.dart';
import 'custom_botton_nav.dart';

import '../../Widgets/office/office_header.dart';
import '../../Widgets/office/office_page_body.dart';

class OfficePage extends StatelessWidget {
  final Office office = Get.arguments[0];
  final PropertyController propertyController = Get.find();
  final OfficePageController officePageController =
      Get.put(OfficePageController(Get.arguments[0].id));
  OfficePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
          backgroundColor: context.theme.backgroundColor,
          bottomNavigationBar: const CustomBottonNav(),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 350,
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  background: officeHeader(
                      office, officePageController.properties.length),
                ),
              ),
              SliverToBoxAdapter(
                child: OfficeBody(office: office),
              )
            ],
          )

          /* SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                officeHeader(office, officePageController.properties.length),
                OfficeBody(office: office)
              ]),
        ), */
          ),
    );
  }
}
