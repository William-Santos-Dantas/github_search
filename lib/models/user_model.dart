import 'dart:convert';

class UserModel {
  final String login;
  final String avatar_url;
  final String url;
  final String name;
  final String email;
  final String location;
  final bool hireable;
  final String bio;
  final int public_repos;
  final int public_gists;
  final int followers;
  final int following;
  
  UserModel({
    required this.login,
    required this.avatar_url,
    required this.url,
    required this.name,
    required this.email,
    required this.location,
    required this.hireable,
    required this.bio,
    required this.public_repos,
    required this.public_gists,
    required this.followers,
    required this.following,
  });
 

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'avatar_url': avatar_url,
      'url': url,
      'name': name,
      'email': email,
      'location': location,
      'hireable': hireable,
      'bio': bio,
      'public_repos': public_repos,
      'public_gists': public_gists,
      'followers': followers,
      'following': following,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      login: map['login'] ?? '',
      avatar_url: map['avatar_url'] ?? '',
      url: map['url'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      location: map['location'] ?? '',
      hireable: map['hireable'] ?? false,
      bio: map['bio'] ?? '',
      public_repos: map['public_repos'] ?? 0,
      public_gists: map['public_gists'] ?? 0,
      followers: map['followers'] ?? 0,
      following: map['following'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
