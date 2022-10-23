// ignore_for_file: avoid_print

import '../../DataAccessLayer/Clients/back_notification_client.dart';
import '../../DataAccessLayer/Models/back_notification.dart';

class BackNotificationRepo {
  var client = BackNotificationClient();

  Future<List<BackNotification>> getBackNotification() async {
    var response = await client.getBackNotification();

    if (response.isNotEmpty) {
      //json.decode(response.toString()).cast<Map<String, dynamic>>();
      return response
          .map<BackNotification>((item) => BackNotification.fromMap(item))
          .toList();
    }
    return [];
  }
}
