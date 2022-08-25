import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/finalmodel.dart';

class AuthService {
  Future<DistrictModel> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://kanglei-tourist-home-df428-default-rtdb.asia-southeast1.firebasedatabase.app/'));
    if (response.statusCode == 200) {
      return DistrictModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
}
