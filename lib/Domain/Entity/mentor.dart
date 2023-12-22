import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class DataMentor {
  String fullname;
  String imageUrl;
  DataMentor({
    required this.fullname,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullname': fullname,
      'imageUrl': imageUrl,
    };
  }

  factory DataMentor.fromMap(Map<String, dynamic> map) {
    return DataMentor(
      fullname: map['fullname'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataMentor.fromJson(String source) =>
      DataMentor.fromMap(json.decode(source) as Map<String, dynamic>);
}
