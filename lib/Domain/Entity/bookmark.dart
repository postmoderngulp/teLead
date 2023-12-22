// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:teelead/Domain/Entity/courseBody.dart';

class bookmark {
  String id;
  CourseBody courseBody;
  bookmark({
    required this.id,
    required this.courseBody,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'courseBody': courseBody.toMap(),
    };
  }

  factory bookmark.fromMap(Map<String, dynamic> map) {
    return bookmark(
      id: map['id'] as String,
      courseBody: CourseBody.fromMap(map['courseBody'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory bookmark.fromJson(String source) =>
      bookmark.fromMap(json.decode(source) as Map<String, dynamic>);
}
