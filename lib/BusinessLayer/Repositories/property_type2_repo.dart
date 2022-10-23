import 'package:noble/DataAccessLayer/Models/property_type2.dart';

import '../../DataAccessLayer/Clients/property_type2_client.dart';

class PropertyType2Repo {
  var client = PropertyType2Client();

  Future<List<PropertyType2>> getTypes() async {
    var response = await client.getAll();

    if (response.isNotEmpty) {
      //json.decode(response.toString()).cast<Map<String, dynamic>>();
      return response
          .map<PropertyType2>((item) => PropertyType2.fromMap(item))
          .toList();
    }
    return [];
  }
}
