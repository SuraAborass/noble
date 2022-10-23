// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:noble/DataAccessLayer/Models/back_notification.dart';

import '../Repositories/notification_repo.dart';

class BackNotificationController extends GetxController {
  late List<BackNotification> backNotifications = [];
  var backNotificationRepo = BackNotificationRepo();
  var isLoading = false.obs;
/*   late List<NotificationItem?> notifications = []; */

  @override
  void onInit() async {
    isLoading.value = true;
    //backNotifications = await backNotificationRepo.getBackNotification();

    isLoading.value = false;

    super.onInit();
  }
}
