class PropertyType2 {
  final int id;
  final String name;

  PropertyType2({
    required this.id,
    required this.name,
  });

  factory PropertyType2.fromMap(Map<String, dynamic> map) {
    return PropertyType2(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
    );
  }
}
