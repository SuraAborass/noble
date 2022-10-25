// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:noble/Constants/api_links.dart';
import 'package:noble/DataAccessLayer/Models/property.dart';

class PropertyClient {

  Future<bool> property(property) async {
    var response = await Dio().post(
        "https://noble.brain.sy/api/v1/property",
        data: {"property": Property},);
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }


  Future<List<dynamic>> getProperty(property) async {
    try {
      var response = await Dio().post(ApiLinks.baseUrl + ApiLinks.properties,
          data: {"property": Property});

      if (response.statusCode == 200) {
        return response.data;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
    }
    return [];
  }

  Future<dynamic> updateInfo(property) async {
    var response =
    await Dio().post(ApiLinks.baseUrl + ApiLinks.properties,
        data: {"property": Property});
    print(response.statusCode);
    if (response.statusCode == 201) {
      return response.data;
    } else {
      return null;
    }
  }
}
