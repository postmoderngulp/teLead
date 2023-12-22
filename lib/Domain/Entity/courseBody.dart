// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:teelead/Domain/Entity/benefit.dart';

class CourseBody {
  String id;
  String name;
  String description;
  int rating;
  String costType;
  String formatType;
  String difficultLevelType;
  int price;
  int durationInMinutes;
  int countStudents;
  String imageUrl;
  List<benefit> benefits;
  CourseBody({
    required this.id,
    required this.name,
    required this.description,
    required this.rating,
    required this.costType,
    required this.formatType,
    required this.difficultLevelType,
    required this.price,
    required this.durationInMinutes,
    required this.countStudents,
    required this.imageUrl,
    required this.benefits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'rating': rating,
      'costType': costType,
      'formatType': formatType,
      'difficultLevelType': difficultLevelType,
      'price': price,
      'durationInMinutes': durationInMinutes,
      'countStudents': countStudents,
      'imageUrl': imageUrl,
      'benefits': benefits.map((x) => x.toMap()).toList(),
    };
  }

  factory CourseBody.fromMap(Map<String, dynamic> map) {
    return CourseBody(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      rating: map['rating'] as int,
      costType: map['costType'] as String,
      formatType: map['formatType'] as String,
      difficultLevelType: map['difficultLevelType'] as String,
      price: map['price'] as int,
      durationInMinutes: map['durationInMinutes'] as int,
      countStudents: map['countStudents'] as int,
      imageUrl: map['imageUrl'] as String,
      benefits: List<benefit>.from(
        (map['benefits'] as List<int>).map<benefit>(
          (x) => benefit.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseBody.fromJson(String source) =>
      CourseBody.fromMap(json.decode(source) as Map<String, dynamic>);
}
