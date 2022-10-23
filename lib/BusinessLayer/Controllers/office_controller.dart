// ignore_for_file: avoid_print

import 'package:get/get.dart';
import '../../DataAccessLayer/Models/office.dart';
import '../Repositories/office_repo.dart';

class OfficesController extends GetxController {
  late List<Office> offices = [];
  var officeRepo = OfficeRepo();
  var isLoading = false.obs;
  @override
  void onInit() async {
    isLoading.value = true;
    update();
    offices = await officeRepo.getOffices();
    isLoading.value = false;
    update();
    super.onInit();
  }
}
