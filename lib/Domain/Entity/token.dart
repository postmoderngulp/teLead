import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class token {
  String accessToken;
  String refreshToken;
  token({
    required this.accessToken,
    required this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'refreshToken': refreshToken,
    };
  }

  factory token.fromMap(Map<String, dynamic> map) {
    return token(
      accessToken: map['accessToken'] as String,
      refreshToken: map['refreshToken'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory token.fromJson(String source) =>
      token.fromMap(json.decode(source) as Map<String, dynamic>);
}
