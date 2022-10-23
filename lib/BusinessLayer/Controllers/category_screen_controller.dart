import 'package:get/get.dart';
import '../../DataAccessLayer/Models/ads.dart';

import '../Repositories/categories_repo.dart';

class CategoriesScreenContoller extends GetxController {
  CategoriesRepo repo = CategoriesRepo();
  List<Advertising> advertisings = [];
  var loading = false.obs;
  final int id;

  CategoriesScreenContoller(this.id);

  @override
  void onInit() async {
    loading.value = true;
    update();
    advertisings = await repo.getAds(id);
    loading.value = false;
    update();
    super.onInit();
  }
}
