import '../../DataAccessLayer/Clients/places_client.dart';
import '../../DataAccessLayer/Models/place.dart';

class PlacesRepo {
  PlacesClient client = PlacesClient();
  Future<List<Place>> getPlaces() async {
    var response = await client.getAll();

    if (response.isNotEmpty) {
      //json.decode(response.toString()).cast<Map<String, dynamic>>();
      return response.map<Place>((item) => Place.fromMap(item)).toList();
    }
    return [];
  }
}
