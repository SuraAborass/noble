import '../../DataAccessLayer/Clients/cities_client.dart';
import '../../DataAccessLayer/Models/city.dart';

class CitiesRepo {
  var client = CitiesClient();

  Future<List<City>> getCities() async {
    var response = await client.getall();

    if (response.isNotEmpty) {
      //json.decode(response.toString()).cast<Map<String, dynamic>>();
      return response.map<City>((item) => City.fromMap(item)).toList();
    }
    return [];
  }
}
