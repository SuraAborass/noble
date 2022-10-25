// ignore_for_file: avoid_print
import 'package:noble/DataAccessLayer/Models/property.dart';
import 'package:noble/DataAccessLayer/Clients/property_client.dart';

class PropertyRepo {
  var client = PropertyClient();

  Future<List<Property>> getProperty(property) async {
    var response = await client.getProperty(property);

    if (response.isNotEmpty) {
      return response.map<Property>((item) => Property.fromMap(item)).toList();
    
    }
    return [];
  }
}
