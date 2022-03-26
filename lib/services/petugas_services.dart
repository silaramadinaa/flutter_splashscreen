import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/petugas_model.dart';

class PetugasService {
  static Future<PetugasModel> fetchPetugasData() async {
    final response = await http
        .get(Uri.parse('https://peminjamanbukuuu.herokuapp.com/api/petugas'));

    if (response.statusCode == 200) {
      var data = response.body;
      return PetugasModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}