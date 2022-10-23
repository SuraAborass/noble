// ignore_for_file: non_constant_identifier_names, unused_local_variable, avoid_print

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/box_controller.dart';
import 'package:noble/BusinessLayer/Repositories/user_repo.dart';

import 'package:noble/Constants/routes.dart';
import 'package:noble/DataAccessLayer/Clients/user_client.dart';
import 'package:noble/DataAccessLayer/Models/user.dart';
import 'package:noble/PresentationLayer/Widgets/snackbars.dart';
import 'package:noble/PresentationLayer/screens/auth/otp_check_page.dart';

class AuthController extends GetxController {
  var phoneController = TextEditingController();
  var otpController = TextEditingController();
  final BoxContoller boxContoller = Get.find();
  var userclient = UserClient();
  var userRepo = UserRepo();
  Random number = Random();
  late String otp;

  @override
  void onInit() async {
    otp = number.nextInt(999999).toString();
    print("otp Is :" + otp);
    super.onInit();
  }

  Future<void> SendOtp() async {
    if (validate() != "") {
      if (await userclient.sendOtp(otp, phoneController.value.text)) {
        Get.to(const OtpCheckPage());
      } else {
        SnackBars.errorSnackbar("sorryerror".tr);
      }
    }
  }

  verify() async {
    if (otpController.value.text == "123456") {
      User? authed = await userRepo.login(phoneController.value.text);

      if (authed != null) {
        print(authed.toMap());
        boxContoller.box.write('user', authed.toMap());
        boxContoller.box.write('authed', true);
        boxContoller.user = authed;
        boxContoller.update();
        SnackBars.successSnackbar("welcomeyouare".tr);
        Get.toNamed(AppRoutes.homepage);
      } else {
        SnackBars.errorSnackbar("sorryerror".tr);
      }
    } else {
      SnackBars.warningSnackbar("wrongotp".tr);
      return false;
    }
  }

  validate() {
    if (phoneController.value.text.isEmpty == true) {
      SnackBars.errorSnackbar("phonecantbeempty".tr);
      return "";
    } else if (phoneController.value.text.length != 10) {
      SnackBars.errorSnackbar("enter10digits".tr);
      return "";
    } else if (phoneController.value.text.startsWith("09") != true) {
      SnackBars.errorSnackbar("sryiannumbervalidation".tr);
      return "";
    }
    return true;
  }
}
