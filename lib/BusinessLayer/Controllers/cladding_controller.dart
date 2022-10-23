// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Repositories/cladding_repo.dart';
import 'package:noble/DataAccessLayer/Models/cladding.dart';

class CladdingController extends GetxController {
  late List<Cladding> claddings = [];
  var claddingRepo = CladdingRepo();
  var isLoading = false.obs;
  @override
  void onInit() async {
    isLoading.value = true;
    claddings = await claddingRepo.getCladding();
    isLoading.value = false;
    update();
    super.onInit();
  }
}
