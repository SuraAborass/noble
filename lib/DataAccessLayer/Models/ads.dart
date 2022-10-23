import 'dart:convert';

class Advertising {
  final int id;
  final String name;
  final String images;
  final String description;
  final num price;
  final String mobileNumber;

  Advertising({
    required this.id,
    required this.name,
    required this.images,
    required this.description,
    required this.price,
    required this.mobileNumber,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'images': images,
      'description': description,
      'price': price,
      'mobileNumber': mobileNumber,
    };
  }

  factory Advertising.fromMap(Map<String, dynamic> map) {
    return Advertising(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      images: map['images'] ?? '',
      description: map['description'] ?? '',
      price: map['price'] != null ? num.parse(map['price']) : 0,
      mobileNumber: map['mobileNumber'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Advertising.fromJson(String source) =>
      Advertising.fromMap(json.decode(source));
}
