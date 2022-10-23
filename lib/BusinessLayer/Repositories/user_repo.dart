// ignore_for_file: avoid_print

import 'package:noble/DataAccessLayer/Clients/user_client.dart';
import 'package:noble/DataAccessLayer/Models/user.dart';

class UserRepo {
  var client = UserClient();

  Future<User?> login(mobilenumber) async {
    var data = await client.verifyCode(mobilenumber);
    if (data != null) {
      print('data not null');
      return User.fromMap(data);
    }
    return null;
  }

  Future<User?> updateInfo(id, name, adress, password) async {
    var data = await client.updateInfo(id, name, adress, password);
    if (data != null) {
      return User.fromMap(data);
    }
    return null;
  }
}
