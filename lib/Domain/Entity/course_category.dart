import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class courseCategory {
  String id;
  String name;
  String imageUrl;
  courseCategory({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  factory courseCategory.fromMap(Map<String, dynamic> map) {
    return courseCategory(
      id: map['id'] as String,
      name: map['name'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory courseCategory.fromJson(String source) =>
      courseCategory.fromMap(json.decode(source) as Map<String, dynamic>);
}
