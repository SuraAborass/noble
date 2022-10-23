// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:noble/DataAccessLayer/Models/story.dart';

class PropertyHasFeature {
  late final int id;
  late final String name;
  late final String type;
  late final int? properyType;
  late final String price;
  late final String title;
  late final String description;
  late final int city;
  late final String space;
  late final int place;
  late final String adress;
  late final int status;
  late final int rooms;
  late final int salons;
  late final int baths;
  late final String floor;
  late final int direction;
  late final int cladding;
  late final String mobilePhone;
  late final String image;
  late final int floors;
  late final String divider;
  late final int views;
  late final int hasElevator;
  late final int hasGenerator;
  late final int hasTerrace;
  late final int hasPool;
  late final int hasConditioner;
  late final int hasSaona;
  late final int hasGarag;
  late final int hasShofag;
  late final int hasJacuzzi;
  late final int hasGarden;
  late final String slug;
  late final String createdAt;
  late final List<Story> stories;
  PropertyHasFeature({
    required this.id,
    required this.name,
    required this.type,
    required this.properyType,
    required this.price,
    required this.title,
    required this.description,
    required this.city,
    required this.space,
    required this.place,
    required this.adress,
    required this.status,
    required this.rooms,
    required this.salons,
    required this.baths,
    required this.floor,
    required this.direction,
    required this.cladding,
    required this.mobilePhone,
    required this.image,
    required this.floors,
    required this.divider,
    required this.views,
    required this.hasElevator,
    required this.hasGenerator,
    required this.hasTerrace,
    required this.hasPool,
    required this.hasConditioner,
    required this.hasSaona,
    required this.hasGarag,
    required this.hasShofag,
    required this.hasJacuzzi,
    required this.hasGarden,
    required this.slug,
    required this.createdAt,
    required this.stories,
  });

  PropertyHasFeature copyWith({
    int? id,
    String? name,
    String? type,
    int? properyType,
    String? price,
    String? title,
    String? description,
    int? city,
    String? space,
    int? place,
    String? adress,
    int? status,
    int? rooms,
    int? salons,
    int? baths,
    String? floor,
    int? direction,
    int? cladding,
    String? mobilePhone,
    String? image,
    int? floors,
    String? divider,
    int? views,
    int? hasElevator,
    int? hasGenerator,
    int? hasTerrace,
    int? hasPool,
    int? hasConditioner,
    int? hasSaona,
    int? hasGarag,
    int? hasShofag,
    int? hasJacuzzi,
    int? hasGarden,
    String? slug,
    String? createdAt,
    List<Story>? stories,
  }) {
    return PropertyHasFeature(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      properyType: properyType ?? this.properyType,
      price: price ?? this.price,
      title: title ?? this.title,
      description: description ?? this.description,
      city: city ?? this.city,
      space: space ?? this.space,
      place: place ?? this.place,
      adress: adress ?? this.adress,
      status: status ?? this.status,
      rooms: rooms ?? this.rooms,
      salons: salons ?? this.salons,
      baths: baths ?? this.baths,
      floor: floor ?? this.floor,
      direction: direction ?? this.direction,
      cladding: cladding ?? this.cladding,
      mobilePhone: mobilePhone ?? this.mobilePhone,
      image: image ?? this.image,
      floors: floors ?? this.floors,
      divider: divider ?? this.divider,
      views: views ?? this.views,
      hasElevator: hasElevator ?? this.hasElevator,
      hasGenerator: hasGenerator ?? this.hasGenerator,
      hasTerrace: hasTerrace ?? this.hasTerrace,
      hasPool: hasPool ?? this.hasPool,
      hasConditioner: hasConditioner ?? this.hasConditioner,
      hasSaona: hasSaona ?? this.hasSaona,
      hasGarag: hasGarag ?? this.hasGarag,
      hasShofag: hasShofag ?? this.hasShofag,
      hasJacuzzi: hasJacuzzi ?? this.hasJacuzzi,
      hasGarden: hasGarden ?? this.hasGarden,
      slug: slug ?? this.slug,
      createdAt: createdAt ?? this.createdAt,
      stories: stories ?? this.stories,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
      'properyType': properyType,
      'price': price,
      'title': title,
      'description': description,
      'city': city,
      'space': space,
      'place': place,
      'adress': adress,
      'status': status,
      'rooms': rooms,
      'salons': salons,
      'baths': baths,
      'floor': floor,
      'direction': direction,
      'cladding': cladding,
      'mobile_phone': mobilePhone,
      'image': image,
      'floors': floors,
      'divider': divider,
      'views': views,
      'has_elevator': hasElevator,
      'has_generator': hasGenerator,
      'has_terrace': hasTerrace,
      'has_pool': hasPool,
      'has_conditioner': hasConditioner,
      'has_saona': hasSaona,
      'has_garag': hasGarag,
      'has_shofag': hasShofag,
      'has_jacuzzi': hasJacuzzi,
      'has_garden': hasGarden,
      'slug': slug,
      'created_at': createdAt,
      'stories': stories,
    };
  }

  factory PropertyHasFeature.fromMap(Map<String, dynamic> map) {
    return PropertyHasFeature(
      id: map['id'] as int,
      name: map['name'] as String,
      type: map['type'] as String,
      properyType: map['properyType'] as int,
      price: map['price'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      city: map['city'] as int,
      space: map['space'] as String,
      place: map['place'] as int,
      adress: ['adress'] as String,
      status: map['status'] as int,
      rooms: map['rooms'] as int,
      salons: map['salons'] as int,
      baths: map['baths'] as int,
      floor: map['floor'] as String,
      direction: map['direction'] as int,
      cladding: map['cladding'] as int,
      mobilePhone: map['mobile_phone'] as String,
      image: map['image'] as String,
      floors: map['floors'] as int,
      divider: map['divider'] as String,
      views: map['views'] as int,
      hasElevator: map['has_elevator'] as int,
      hasGenerator: map['has_generator'] as int,
      hasTerrace: map['has_terrace'] as int,
      hasPool: map['has_pool'] as int,
      hasConditioner: map['has_conditioner'] as int,
      hasSaona: map['has_saona'] as int,
      hasGarag: map['has_garag'] as int,
      hasShofag: map['has_shofag'] as int,
      hasJacuzzi: map['has_jacuzzi'] as int,
      hasGarden: map['has_garden'] as int,
      slug: map['slug'] as String,
      createdAt: map['created_at'] as String,
      stories: map['stories'] as List<Story>,
    );
  }

  String toJson() => json.encode(toMap());

  factory PropertyHasFeature.fromJson(String source) =>
      PropertyHasFeature.fromMap(json.decode(source) as Map<String, dynamic>);
}
