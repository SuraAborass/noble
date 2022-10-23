// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BackNotification {
  final int id;
  final int fromId;
  final int toId;
  final String message;
  final String payload;
  final String createdAt;
  BackNotification({
    required this.id,
    required this.fromId,
    required this.toId,
    required this.message,
    required this.payload,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'from_id': fromId,
      'to_id': toId,
      'message': message,
      'payload': payload,
      'created_at': createdAt,
    };
  }

  factory BackNotification.fromMap(Map<String, dynamic> map) {
    return BackNotification(
      id: map['id'] as int,
      fromId: map['from_id'] ?? map['from_id'] as int,
      toId: map['to_id'] as int,
      message: map['message'] as String,
      payload: map['payload'] as String,
      createdAt: map['created_at'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BackNotification.fromJson(String source) =>
      BackNotification.fromMap(json.decode(source) as Map<String, dynamic>);
}
