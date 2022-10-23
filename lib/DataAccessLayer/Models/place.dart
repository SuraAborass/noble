import 'dart:convert';

import 'city.dart';

class Place {
  final int id;
  final String name;
  final City city;
  Place({
    required this.id,
    required this.name,
    required this.city,
  });

  factory Place.fromMap(Map<String, dynamic> map) {
    return Place(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      city: City.fromMap(map['city']),
    );
  }

  factory Place.fromJson(String source) => Place.fromMap(json.decode(source));
}
