import 'dart:convert';


class UserModel {
  String login;
  String avatar_url;

  
  UserModel({
    required this.login,
    required this.avatar_url,
  });

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'avatar_url': avatar_url,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      login: map['login'] ?? '',
      avatar_url: map['avatar_url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
