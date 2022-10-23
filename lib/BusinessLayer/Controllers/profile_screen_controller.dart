// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/box_controller.dart';
import 'package:noble/Constants/routes.dart';
import 'package:noble/PresentationLayer/Widgets/snackbars.dart';

import '../../DataAccessLayer/Models/user.dart';
import '../Repositories/user_repo.dart';

class ProfileScreenController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final BoxContoller boxContoller = Get.find();
  UserRepo userRepo = UserRepo();
  var loading = false.obs;
  @override
  void onInit() {
    if (boxContoller.user != null) {
      nameController.text = boxContoller.user!.name;
      emailController.text = boxContoller.user!.email;
    }
    super.onInit();
  }

  Future<void> logout() async {
    boxContoller.box.remove('user');
    boxContoller.box.remove('authed');
    boxContoller.user = null;
    boxContoller.update();
    Get.toNamed(AppRoutes.loginPage);
  }

  Future<void> updateInfo() async {
    loading.value = true;
    User? user = await userRepo.updateInfo(
        boxContoller.user!.id,
        nameController.value.text,
        emailController.value.text,
        passwordController.value.text);
    if (user != null) {
      boxContoller.box.remove('user');
      boxContoller.box.write('user', user.toMap());
      boxContoller.user = user;
      boxContoller.update();
      SnackBars.successSnackbar("Successfully Saved ");
    } else {
      SnackBars.errorSnackbar("There Was an Error ");
    }
    loading.value = false;
  }
}
