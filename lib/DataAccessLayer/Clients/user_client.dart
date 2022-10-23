// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:noble/Constants/api_links.dart';

class UserClient {
  Future<bool> sendOtp(otp, phone) async {
    var response = await Dio().post(
        "https://noble.brain.sy/api/v1/getVerifyCode",
        data: {"code": otp, "mobile_number": phone});
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<dynamic> verifyCode(phone) async {
    var response = await Dio().post(ApiLinks.baseUrl + ApiLinks.verify,
        data: {"mobile_number": phone});
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }

  Future<dynamic> updateInfo(id, name, adress, password) async {
    var response =
        await Dio().post(ApiLinks.baseUrl + ApiLinks.updateUserInfo, data: {
      "id": id,
      "name": name,
      "password": password,
    });
    print(response.statusCode);
    if (response.statusCode == 201) {
      return response.data;
    } else {
      return null;
    }
  }
}
