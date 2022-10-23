import 'package:noble/DataAccessLayer/Clients/property_type_client.dart';
import 'package:noble/DataAccessLayer/Models/property_type.dart';

class PropertyTypeRepo {
  var client = PropertyTypeClient();

  Future<List<PropertyType>> getTypes() async {
    var response = await client.getAll();

    if (response.isNotEmpty) {
      //json.decode(response.toString()).cast<Map<String, dynamic>>();
      return response
          .map<PropertyType>((item) => PropertyType.fromMap(item))
          .toList();
    }
    return [];
  }
}
