// To parse this JSON data, do
//
//     final paymentModel = paymentModelFromJson(jsonString);

import 'dart:convert';

PaymentModel paymentModelFromJson(String str) => PaymentModel.fromJson(json.decode(str));

String paymentModelToJson(PaymentModel data) => json.encode(data.toJson());

class PaymentModel {
  PaymentModel({
    required this.name,
    required this.email,
    required this.cardNumber,
    required this.expirationDate,
    required this.cvv,
  });

  String name;
  String email;
  String cardNumber;
  String expirationDate;
  String cvv;

  factory PaymentModel.fromJson(Map<String, dynamic> json) => PaymentModel(
    name: json["name"],
    email: json["email"],
    cardNumber: json["cardNumber"],
    expirationDate: json["expirationDate"],
    cvv: json["cvv"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "cardNumber": cardNumber,
    "expirationDate": expirationDate,
    "cvv": cvv,
  };
}
