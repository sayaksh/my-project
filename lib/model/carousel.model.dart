// To parse this JSON data, do
//
//     final imagModel = imagModelFromJson(jsonString);

import 'dart:convert';

List<ImagModel> imagModelFromJson(String str) =>
    List<ImagModel>.from(json.decode(str).map((x) => ImagModel.fromJson(x)));

String imagModelToJson(List<ImagModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImagModel {
  ImagModel({
    required this.imgUrl,
  });

  final String imgUrl;

  factory ImagModel.fromJson(Map<String, dynamic> json) => ImagModel(
        imgUrl: json["img_url"],
      );

  Map<String, dynamic> toJson() => {
        "img_url": imgUrl,
      };
}
