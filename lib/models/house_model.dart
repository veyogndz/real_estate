// To parse this JSON data, do
//
//     final houseModel = houseModelFromJson(jsonString);

import 'dart:convert';

HouseModel houseModelFromJson(String str) => HouseModel.fromJson(json.decode(str));

String houseModelToJson(HouseModel data) => json.encode(data.toJson());

class HouseModel {
  HouseModel({
    required this.houseType,
  });

  String houseType;

  factory HouseModel.fromJson(Map<String, dynamic> json) => HouseModel(
    houseType: json["houseType"],
  );

  Map<String, dynamic> toJson() => {
    "houseType": houseType,
  };
}
