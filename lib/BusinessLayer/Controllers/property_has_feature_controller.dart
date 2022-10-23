// ignore_for_file: avoid_print

import 'package:get/get.dart';

import '../../DataAccessLayer/Models/property_has_feature.dart';
import '../Repositories/property_has_feature_repo.dart';

class PropetiesHasFeature extends GetxController {
  late List<PropertyHasFeature> propertiesHasFeature = [];
  var propertiesHasFeatureRepo = PropertyHasFeatureRepo();
  var isLoading = false.obs;
  late List propertyFeature = [];
  final PropetiesHasFeature propertiesHasFeatureController =
      PropetiesHasFeature();
  @override
  void onInit() async {
    isLoading.value = true;
    propertiesHasFeature =
        await propertiesHasFeatureRepo.getPropertyHasFeature();
    for (var element in propertiesHasFeature) {
      print(element.description);
      propertyFeature.add(element.description);
    }
    print(propertiesHasFeature);
    isLoading.value = false;
    super.onInit();
  }
}
