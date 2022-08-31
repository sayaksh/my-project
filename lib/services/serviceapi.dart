import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:kanglei_tourist_home/model/carousel.model.dart';

import 'package:kanglei_tourist_home/model/districts.model.dart';

class ServiceApi {
  Future<List<DistrictModel2>?> getdata() async {
    final response = await http.get(Uri.parse(
        'https://kanglei-tourist-home-default-rtdb.firebaseio.com/district.json'));
    final data = jsonDecode(response.body) as List;
    if (response.statusCode == 200) {
      var users = data.map((e) => DistrictModel2.fromJson(e)).toList();
      log('Successfully Shown Profile');
      return users;
    } else {
      log('Failed to Getdata.');
    }
    return null;
  }

  Future<List<ImagModel>?> getdata1() async {
    final response = await http.get(Uri.parse(
        'https://kanglei-tourist-home-default-rtdb.firebaseio.com/carouselist.json'));
    final data = jsonDecode(response.body) as List;
    if (response.statusCode == 200) {
      var users = data.map((e) => ImagModel.fromJson(e)).toList();
      log('Successfully Shown Profile');
      return users;
    } else {
      log('Failed to Getdata.');
    }
    return null;
  }
}
