// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:noble/DataAccessLayer/Models/property.dart';

import '../Repositories/office_repo.dart';

class OfficePageController extends GetxController {
  var officeRepo = OfficeRepo();
  var isLoading = false.obs;
  late List<Property> properties = [];
  final int officeId;

  OfficePageController(this.officeId);

  Future<void> getproperties() async {
    isLoading.value = true;
    update();
    properties = await officeRepo.getProperties(officeId);
    print(properties);
    update();
    isLoading.value = false;
  }

  @override
  void onInit() async {
    await getproperties();
    super.onInit();
  }
}
