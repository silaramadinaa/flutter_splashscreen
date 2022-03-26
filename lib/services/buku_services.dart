import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/buku_model.dart';

class BukuService {
  static Future<BukuModel> fetchBukuData() async {
    final response = await http
        .get(Uri.parse('https://peminjamanbukuuu.herokuapp.com/api/buku'));

    if (response.statusCode == 200) {
      var data = response.body;
      return BukuModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}