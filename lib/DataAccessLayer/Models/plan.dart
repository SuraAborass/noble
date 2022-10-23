import 'dart:convert';

/*
"plan": {
    "id": 1,
    "max_properties": 2,
    "max_stories": 0,
    "show_in_highlights": 0,
    "price": "0.00",
    "created_at": "2022-09-22T12:06:22.000000Z"
  }
   */

class Plan {
  int id;
  int maxProperties;
  int maxStories;
  bool showInHighlights;
  num price;
  Plan({
    required this.id,
    required this.maxProperties,
    required this.maxStories,
    required this.showInHighlights,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'maxProperties': maxProperties,
      'maxStories': maxStories,
      'showInHighlights': showInHighlights,
      'price': price,
    };
  }
/*
    "id": 1,
    "max_properties": 2,
    "max_stories": 0,
    "show_in_highlights": 0,
    "price": "0.00",
    "created_at": "2022-09-22T12:06:22.000000Z"

*/

  factory Plan.fromMap(Map<String, dynamic> map) {
    return Plan(
      id: map['id']?.toInt() ?? 0,
      maxProperties: map['max_properties']?.toInt() ?? 0,
      maxStories: map['max_stories']?.toInt() ?? 0,
      showInHighlights: map['show_in_highlights'] ?? false,
      price: map['price'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Plan.fromJson(String source) => Plan.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Plan(id: $id, maxProperties: $maxProperties, maxStories: $maxStories, showInHighlights: $showInHighlights, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Plan &&
        other.id == id &&
        other.maxProperties == maxProperties &&
        other.maxStories == maxStories &&
        other.showInHighlights == showInHighlights &&
        other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        maxProperties.hashCode ^
        maxStories.hashCode ^
        showInHighlights.hashCode ^
        price.hashCode;
  }
}
