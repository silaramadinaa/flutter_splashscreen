import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/anggota_model.dart';

class AnggotaService {
  static Future<AnggotaModel> fetchAnggotaData() async {
    final response = await http
        .get(Uri.parse('https://peminjamanbukuuu.herokuapp.com/api/anggota'));

    if (response.statusCode == 200) {
      var data = response.body;
      return AnggotaModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}