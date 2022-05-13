import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.email,
    required this.password,
    required this.userName,
    required this.createDate,
    required this.unID,
  });

  String email;
  String password;
  String createDate;
  String userName;
  String unID;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    email: json["email"],
    password: json["password"],
    createDate: json["createDate"],
    userName: json["userName"],
    unID:  json["unId"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
    "createDate": createDate,
    "userName" : userName,
    "unId" :unID
  };
}
