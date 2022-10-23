// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:noble/Constants/api_links.dart';

class BackNotificationClient {
  Future<List<dynamic>> getBackNotification() async {
    try {
      var response =
          await Dio().get(ApiLinks.baseUrl + ApiLinks.backNotifications);
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
