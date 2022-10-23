import '../../DataAccessLayer/Clients/categories_client.dart';
import '../../DataAccessLayer/Models/ads.dart';
import '../../DataAccessLayer/Models/categories.dart';

class CategoriesRepo {
  CategoriesClient client = CategoriesClient();

  Future<List<Category>> getCategories() async {
    var response = await client.getall();

    if (response.isNotEmpty) {
      return response.map<Category>((item) => Category.fromMap(item)).toList();
    }
    return [];
  }

  Future<List<Advertising>> getAds(id) async {
    var response = await client.getAdsByID(id);

    if (response.isNotEmpty) {
      return response
          .map<Advertising>((item) => Advertising.fromMap(item))
          .toList();
    }
    return [];
  }
}
