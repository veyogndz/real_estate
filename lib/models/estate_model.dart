// To parse this JSON data, do
//
//     final estateModel = estateModelFromJson(jsonString);

import 'dart:convert';

EstateModel estateModelFromJson(String str) => EstateModel.fromJson(json.decode(str));

String estateModelToJson(EstateModel data) => json.encode(data.toJson());

class EstateModel {
  EstateModel({
    required this.houseType,
    required this.price,
    required this.score,
    required this.pictures,
  });
  String houseType;
  String price;
  String score;
  List<String> pictures;

  factory EstateModel.fromJson(Map<String, dynamic> json) => EstateModel(
    houseType: json["houseType"],
    price: json["price"],
    score: json["score"],
    pictures: List<String>.from(json["pictures"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "houseType": houseType,
    "price": price,
    "score": score,
    "pictures": List<String>.from(pictures.map((x) => x)),
  };
}
