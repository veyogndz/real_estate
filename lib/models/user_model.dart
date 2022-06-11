import 'dart:convert';

import 'package:real_estate/models/payment_model.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.email,
    required this.password,
    required this.userName,
    required this.createDate,
    required this.unID,
    required this.houseType,
    required this.paymentModel,
    required this.notifications
  });

  String email;
  String password;
  String createDate;
  String userName;
  String unID;
  List<String> houseType;
  List<PaymentModel> paymentModel;
  List<String> notifications;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        email: json["email"],
        password: json["password"],
        createDate: json["createDate"],
        userName: json["userName"],
        unID: json["unId"],
        houseType: json["houseType"],
        paymentModel: json["paymentModel"],
        notifications: json["notifications"],
  );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "createDate": createDate,
        "userName": userName,
        "unId": unID,
        "houseType": houseType,
        "paymentModel":paymentModel.map((e) => e.toJson()).toList(),
        "notifications":notifications,
  };
}
