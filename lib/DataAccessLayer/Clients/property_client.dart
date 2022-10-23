// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:noble/Constants/api_links.dart';

class PropertyClient {

  Future<bool> property(type ,title) async {
    var response = await Dio().post(
        "https://noble.brain.sy/api/v1/property",
        data: {"type": type, "title": title},);
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }


  Future<List<dynamic>> getProperty(type,title) async {
    try {
      var response = await Dio().post(ApiLinks.baseUrl + ApiLinks.properties,
          data: {"type": type,"title":title});

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

  Future<dynamic> updateInfo(id, type, title) async {
    var response =
    await Dio().post(ApiLinks.baseUrl + ApiLinks.properties, data: {
      "id": id,
      "type": type,
      "title": title,
    });
    print(response.statusCode);
    if (response.statusCode == 201) {
      return response.data;
    } else {
      return null;
    }
  }
}
