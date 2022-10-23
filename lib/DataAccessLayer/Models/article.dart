// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Article {
  final int id;
  final String title;
  final String description;
  final String body;
  final String image;
  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.body,
    required this.image,
  });
  // final int authorId;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'body': body,
      'image': image,
    };
  }

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      body: map['body'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Article.fromJson(String source) =>
      Article.fromMap(json.decode(source) as Map<String, dynamic>);
}
