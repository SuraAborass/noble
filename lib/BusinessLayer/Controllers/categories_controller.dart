import 'package:get/get.dart';
import '../Repositories/categories_repo.dart';

import '../../DataAccessLayer/Models/categories.dart';

class CategoriesController extends GetxController {
  CategoriesRepo repo = CategoriesRepo();
  List<Category> categories = [];
  var loading = false.obs;

  Future<void> loadCategories() async {
    loading.value = true;
    update();
    categories = await repo.getCategories();
    loading.value = false;
    update();
  }

  @override
  void onInit() async {
    await loadCategories();
    super.onInit();
  }
}
