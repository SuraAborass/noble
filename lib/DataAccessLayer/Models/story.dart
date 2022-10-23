import 'dart:convert';

class Story {
  final int id;
  final String image;
  final String title;

  //late final int property;
  //late final int office;

  Story({
    required this.id,
    required this.image,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'title': title,
    };
  }

  factory Story.fromMap(Map<String, dynamic> map) {
    return Story(
      id: map['id']?.toInt() ?? 0,
      image: map['image'] ?? '',
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Story.fromJson(String source) => Story.fromMap(json.decode(source));
}
