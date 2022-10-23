// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

import '../../Constants/api_links.dart';

class PropertyType2Client {
  Future<List<dynamic>> getAll() async {
    try {
      var response =
          await Dio().get(ApiLinks.baseUrl + ApiLinks.propertyTypes2);

      if (response.statusCode == 200) {
        return response.data;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
