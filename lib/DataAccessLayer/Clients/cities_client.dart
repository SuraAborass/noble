// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

import '../../Constants/api_links.dart';

class CitiesClient {
  Future<List<dynamic>> getall() async {
    try {
      var response = await Dio().get(ApiLinks.baseUrl + ApiLinks.cities);
      print(response.data);
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

  Future<List<dynamic>> getPropertiesByID(id) async {
    try {
      var response = await Dio().get(
          ApiLinks.baseUrl + ApiLinks.cities + "/$id/" + ApiLinks.properties);
      print(response.data);
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
}
