import 'package:get/get.dart';
import '../../Constants/colors.dart';

class SnackBars {
  static void successSnackbar(text) {
    Get.rawSnackbar(
        message: text,
        backgroundColor: AppColors.success,
        duration: const Duration(seconds: 3));
  }

  static void errorSnackbar(text) {
    Get.rawSnackbar(
        message: text,
        backgroundColor: AppColors.error,
        duration: const Duration(seconds: 3));
  }

  static void warningSnackbar(text) {
    Get.rawSnackbar(
        message: text,
        backgroundColor: AppColors.warning,
        duration: const Duration(seconds: 3));
  }
}
