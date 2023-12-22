import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CourseBenefit {
  String id;
  String name;
  CourseBenefit({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory CourseBenefit.fromMap(Map<String, dynamic> map) {
    return CourseBenefit(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseBenefit.fromJson(String source) =>
      CourseBenefit.fromMap(json.decode(source) as Map<String, dynamic>);
}
