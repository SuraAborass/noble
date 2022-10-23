// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Repositories/place_repo.dart';
import 'package:noble/DataAccessLayer/Models/place.dart';

class PlacesController extends GetxController {
  late List<Place> offices = [];
  var placesRepo = PlacesRepo();
  var isLoading = false.obs;
  @override
  void onInit() async {
    isLoading.value = true;
    update();
    offices = await placesRepo.getPlaces();
    isLoading.value = false;
    update();
    super.onInit();
  }
}
