// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/property_controller.dart';
import 'package:noble/DataAccessLayer/Models/property.dart';

class SearchScreenController extends GetxController {
  final PropertyController propertyController = Get.find();
  List<Property> properties = [];
  TextEditingController searchtext = TextEditingController();
  List<Property> searchreslut = [];
  @override
  void onInit() async {
    properties = propertyController.properties;
    super.onInit();
  }

  void search(value) {
    print("start Search : " + value);
    searchreslut = properties
        .where((e) =>
            e.title.contains(value.toString()) ||
            e.city.contains(value.toString()))
        .toList();
    print("properties : " + searchreslut.length.toString());
    update();
  }
}
