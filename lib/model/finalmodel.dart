// To parse this JSON data, do
//
//     final districtModel = districtModelFromJson(jsonString);

import 'dart:convert';

List<DistrictModel> districtModelFromJson(String str) =>
    List<DistrictModel>.from(
        json.decode(str).map((x) => DistrictModel.fromJson(x)));

String districtModelToJson(List<DistrictModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DistrictModel {
  DistrictModel({
    required this.attributes,
    required this.id,
  });

  final Attributes attributes;
  final int id;

  factory DistrictModel.fromJson(Map<String, dynamic> json) => DistrictModel(
        attributes: Attributes.fromJson(json["attributes"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "attributes": attributes.toJson(),
        "id": id,
      };
}

class Attributes {
  Attributes({
    required this.createdAt,
    required this.description,
    required this.districtName,
    required this.publishedAt,
    required this.spots,
    required this.stateId,
    required this.updatedAt,
  });

  final DateTime createdAt;
  final String description;
  final String districtName;
  final DateTime publishedAt;
  final List<Spot>? spots;
  final int stateId;
  final DateTime updatedAt;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        createdAt: DateTime.parse(json["createdAt"]),
        description: json["description"],
        districtName: json["district_name"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        spots: json["spots"] == null
            ? null
            : List<Spot>.from(json["spots"].map((x) => Spot.fromJson(x))),
        stateId: json["state_id"],
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "description": description,
        "district_name": districtName,
        "publishedAt": publishedAt.toIso8601String(),
        "spots": spots == null
            ? null
            : List<dynamic>.from(spots!.map((x) => x.toJson())),
        "state_id": stateId,
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class Spot {
  Spot({
    required this.imgUrl,
    required this.spotDescription,
    required this.spotName,
  });

  final String imgUrl;
  final String spotDescription;
  final String spotName;

  factory Spot.fromJson(Map<String, dynamic> json) => Spot(
        imgUrl: json["img_url"],
        spotDescription: json["spotDescription"],
        spotName: json["spotName"],
      );

  Map<String, dynamic> toJson() => {
        "img_url": imgUrl,
        "spotDescription": spotDescription,
        "spotName": spotName,
      };
}
