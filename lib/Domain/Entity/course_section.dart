// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:teelead/Domain/Entity/section.dart';

class CourseSection {
  String id;
  String name;
  List<Section> sections;
  CourseSection({
    required this.id,
    required this.name,
    required this.sections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'sections': sections.map((x) => x.toMap()).toList(),
    };
  }

  factory CourseSection.fromMap(Map<String, dynamic> map) {
    return CourseSection(
      id: map['id'] as String,
      name: map['name'] as String,
      sections: List<Section>.from(
        (map['sections'] as List<int>).map<Section>(
          (x) => Section.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseSection.fromJson(String source) =>
      CourseSection.fromMap(json.decode(source) as Map<String, dynamic>);
}
