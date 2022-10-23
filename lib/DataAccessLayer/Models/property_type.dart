class PropertyType {
  final int id;
  final String name;
  PropertyType({
    required this.id,
    required this.name,
  });

  factory PropertyType.fromMap(Map<String, dynamic> map) {
    return PropertyType(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
    );
  }
}
