import 'package:get/get.dart';
import '../Repositories/city_repo.dart';
import '../../DataAccessLayer/Models/city.dart';

class CitiesController extends GetxController {
  late List<City> cities = [];
  var cityRepo = CitiesRepo();
  var isLoading = false.obs;

  @override
  void onInit() async {
    isLoading.value = true;
    cities = await cityRepo.getCities();
    update();
    super.onInit();
  }
}
