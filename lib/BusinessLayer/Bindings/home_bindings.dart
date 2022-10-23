import 'package:get/get.dart';
import '../../theme_service.dart';
import '../Controllers/back_notification_controller.dart';
import '../Controllers/property_controller.dart';
import '../Controllers/story_controller.dart';
import '../Controllers/office_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<StoriesController>(StoriesController());
    Get.put<BackNotificationController>(BackNotificationController());
    Get.put<PropertyController>(PropertyController());
    Get.put<OfficesController>(OfficesController());
    Get.put<ThemeService>(ThemeService());
  }
}
