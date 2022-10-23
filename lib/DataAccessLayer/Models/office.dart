// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class Office {
  final int id;
  final String name;
  final String logo;
  final String mobileNumber;
  final String address;
  final String city;
  final double? lat;
  final double? long;

  Office(
      {required this.id,
      required this.name,
      required this.address,
      required this.logo,
      required this.city,
      required this.lat,
      required this.long,
      required this.mobileNumber});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'logo': logo,
      'address': address,
    };
  }

  factory Office.fromMap(Map<String, dynamic> map) {
    return Office(
      id: map['id'] as int,
      name: map['name'] as String,
      address: map['address'] as String,
      mobileNumber: map['mobile_number'] as String,
      logo: map['logo'] as String,
      city: map['city'] as String,
      lat: map['lat'] != null ? double.parse(map['lat']) : null,
      long: map['long'] != null ? double.parse(map['long']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Office.fromJson(String source) =>
      Office.fromMap(json.decode(source) as Map<String, dynamic>);
}
