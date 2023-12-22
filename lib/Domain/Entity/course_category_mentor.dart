// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:teelead/Domain/Entity/mentor.dart';

class CourseCategoryMentor {
  String name;
  List<DataMentor> mentors;
  CourseCategoryMentor({
    required this.name,
    required this.mentors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'mentors': mentors.map((x) => x.toMap()).toList(),
    };
  }

  factory CourseCategoryMentor.fromMap(Map<String, dynamic> map) {
    return CourseCategoryMentor(
      name: map['name'] as String,
      mentors: List<DataMentor>.from(
        (map['mentors'] as List<int>).map<DataMentor>(
          (x) => DataMentor.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseCategoryMentor.fromJson(String source) =>
      CourseCategoryMentor.fromMap(json.decode(source) as Map<String, dynamic>);
}
