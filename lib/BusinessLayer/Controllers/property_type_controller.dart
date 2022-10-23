// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Repositories/property_type_repo.dart';
import 'package:noble/DataAccessLayer/Models/property_type.dart';

class TypesController extends GetxController {
  late List<PropertyType> types = [];
  var typesRepo = PropertyTypeRepo();
  @override
  void onInit() async {
    types = await typesRepo.getTypes();
    update();
    super.onInit();
  }
}
