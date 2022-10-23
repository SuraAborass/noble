// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:noble/DataAccessLayer/Models/office.dart';

class Property {
  final int id;
  final String type;
  final String? properyType;
  final String city;
  final String price;
  final String title;
  final String description;
  final String image;
  final String space;
  final int views;
  final int rooms;
  final int baths;
  final Office? office;

  Property({
    required this.id,
    required this.type,
    this.properyType,
    required this.city,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.space,
    required this.views,
    required this.rooms,
    required this.baths,
    required this.office,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'properyType': properyType,
      'city': city,
      'price': price,
      'title': title,
      'description': description,
      'image': image,
      'space': space,
      'views': views,
      'rooms': rooms,
      'baths': baths,
    };
  }

  factory Property.fromMap(Map<String, dynamic> map) {
    return Property(
        id: map['id']?.toInt() ?? 0,
        type: map['type'] ?? '',
        properyType: map['properyType'] ?? "",
        city: map['city'] ?? '',
        price: map['price'] ?? '',
        title: map['title'] ?? '',
        description: map['description'] ?? '',
        image: map['image'] ?? '',
        space: map['space'] ?? '',
        views: map['views']?.toInt() ?? 0,
        rooms: map['rooms']?.toInt() ?? 0,
        baths: map['baths']?.toInt() ?? 0,
        office: map['office'] != null ? Office.fromMap(map['office']) : null);
  }

  String toJson() => json.encode(toMap());

  factory Property.fromJson(String source) =>
      Property.fromMap(json.decode(source));
}
