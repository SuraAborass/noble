// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

import '../../Constants/api_links.dart';

class CategoriesClient {
  Future<List<dynamic>> getall() async {
    try {
      var response = await Dio().get(ApiLinks.baseUrl + ApiLinks.categories);

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

  Future<List<dynamic>> getAdsByID(id) async {
    try {
      var response = await Dio()
          .get(ApiLinks.baseUrl + ApiLinks.categories + "/$id/" + ApiLinks.ads);
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
