// To parse this JSON data, do
//
//     final districtModel2 = districtModel2FromJson(jsonString);

import 'dart:convert';

List<DistrictModel2> districtModel2FromJson(String str) =>
    List<DistrictModel2>.from(
        json.decode(str).map((x) => DistrictModel2.fromJson(x)));

String districtModel2ToJson(List<DistrictModel2> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DistrictModel2 {
  DistrictModel2({
    required this.attributes,
    required this.id,
  });

  final Attributes attributes;
  final int id;

  factory DistrictModel2.fromJson(Map<String, dynamic> json) => DistrictModel2(
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
    required this.description,
    required this.districtName,
    required this.spots,
    required this.stateId,
  });

  final String description;
  final String districtName;
  final List<Spot>? spots;
  final int stateId;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        description: json["description"],
        districtName: json["district_name"],
        spots: json["spots"] == null
            ? null
            : List<Spot>.from(json["spots"].map((x) => Spot.fromJson(x))),
        stateId: json["state_id"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "district_name": districtName,
        "spots": spots == null
            ? null
            : List<dynamic>.from(spots!.map((x) => x.toJson())),
        "state_id": stateId,
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
