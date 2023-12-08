import 'dart:convert';

Users usersFromJson(String str) => Users.fromJson(json.decode(str));

String usersToJson(Users data) => json.encode(data.toJson());

class Users {
  late final String? uid;
  final String? fullName;
  final String? email;
  final String? password;
  final String? imageUrl;

  Users({
    this.uid,
    this.fullName,
    this.email,
    this.password,
    this.imageUrl,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    uid: json["uid"] ?? "",
    fullName: json["fullName"],
    email: json["email"],
    password: json["password"],
    imageUrl: json["imageUrl"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "fullName": fullName,
    "email": email,
    "password": password,
    "imageUrl": imageUrl,
  };
}
