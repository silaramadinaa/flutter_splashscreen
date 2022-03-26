import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/peminjaman_model.dart';

class PeminjamanService {
  static Future<PeminjamanModel> fetchPeminjamanData() async {
    final response = await http
        .get(Uri.parse('https://peminjamanbukuuu.herokuapp.com/api/peminjaman'));

    if (response.statusCode == 200) {
      var data = response.body;
      return PeminjamanModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}