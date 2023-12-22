import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class profile {
  String email;
  String? fullname;
  String? nickname;
  String? dob;
  String? phone;
  String role;
  String gender;
  String? urlIcon;
  profile({
    required this.email,
    this.fullname,
    this.nickname,
    this.dob,
    this.phone,
    required this.role,
    required this.gender,
    this.urlIcon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'fullname': fullname,
      'nickname': nickname,
      'dob': dob,
      'phone': phone,
      'role': role,
      'gender': gender,
      'urlIcon': urlIcon,
    };
  }

  factory profile.fromMap(Map<String, dynamic> map) {
    return profile(
      email: map['email'] as String,
      fullname: map['fullname'] != null ? map['fullname'] as String : null,
      nickname: map['nickname'] != null ? map['nickname'] as String : null,
      dob: map['dob'] != null ? map['dob'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      role: map['role'] as String,
      gender: map['gender'] as String,
      urlIcon: map['urlIcon'] != null ? map['urlIcon'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory profile.fromJson(String source) =>
      profile.fromMap(json.decode(source) as Map<String, dynamic>);
}
