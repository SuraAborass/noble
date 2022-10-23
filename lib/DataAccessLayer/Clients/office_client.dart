// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:noble/Constants/api_links.dart';

class OfficeClient {
  Future<List<dynamic>> getOffices() async {
    try {
      var response = await Dio().get(ApiLinks.baseUrl + ApiLinks.offices);
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

  Future<List<dynamic>> getProperties(id) async {
    try {
      var response = await Dio()
          .get(ApiLinks.baseUrl + ApiLinks.offices + "/$id" + '/properties');
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
