import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class benefit {
  String name;
  int countItems;
  String imageUrl;
  benefit({
    required this.name,
    required this.countItems,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'countItems': countItems,
      'imageUrl': imageUrl,
    };
  }

  factory benefit.fromMap(Map<String, dynamic> map) {
    return benefit(
      name: map['name'] as String,
      countItems: map['countItems'] as int,
      imageUrl: map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory benefit.fromJson(String source) =>
      benefit.fromMap(json.decode(source) as Map<String, dynamic>);
}
