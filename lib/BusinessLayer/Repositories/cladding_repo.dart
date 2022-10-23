// ignore_for_file: avoid_print

import 'package:noble/DataAccessLayer/Clients/cladding_client.dart';

import '../../DataAccessLayer/Models/cladding.dart';

class CladdingRepo {
  var client = CladdingClient();

  Future<List<Cladding>> getCladding() async {
    var response = await client.getCladding();

    if (response.isNotEmpty) {
      return response.map<Cladding>((item) => Cladding.fromMap(item)).toList();
    }
    return [];
  }
}
