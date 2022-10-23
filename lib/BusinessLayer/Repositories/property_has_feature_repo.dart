// ignore_for_file: avoid_print

import 'package:noble/DataAccessLayer/Clients/property_has_feature_client.dart';

import '../../DataAccessLayer/Models/property_has_feature.dart';

class PropertyHasFeatureRepo {
  var client = PropertyHasFeatureClient();

  Future<List<PropertyHasFeature>> getPropertyHasFeature() async {
    var response = await client.getPropertyHasFeature();

    if (response.isNotEmpty) {
      //json.decode(response.toString()).cast<Map<String, dynamic>>();
      return response
          .map<PropertyHasFeature>((item) => PropertyHasFeature.fromMap(item))
          .toList();
    }
    return [];
  }
}
