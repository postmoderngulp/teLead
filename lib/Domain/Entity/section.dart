import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Section {
  String id;
  String name;
  String videoUrl;
  int durationInMinutes;
  Section({
    required this.id,
    required this.name,
    required this.videoUrl,
    required this.durationInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'videoUrl': videoUrl,
      'durationInMinutes': durationInMinutes,
    };
  }

  factory Section.fromMap(Map<String, dynamic> map) {
    return Section(
      id: map['id'] as String,
      name: map['name'] as String,
      videoUrl: map['videoUrl'] as String,
      durationInMinutes: map['durationInMinutes'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Section.fromJson(String source) =>
      Section.fromMap(json.decode(source) as Map<String, dynamic>);
}
