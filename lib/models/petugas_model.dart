class PetugasModel {
  bool? success;
  String? message;
  List<Data>? data;

  PetugasModel({required this.success, required this.message, required this.data});

  PetugasModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? namaPetugas;
  String? jabatanPetugas;
  String? noTelpPetugas;
  String? alamatPetugas;

  Data(
      {required this.namaPetugas,
      required this.jabatanPetugas,
      required this.noTelpPetugas,
      required this.alamatPetugas});

  Data.fromJson(Map<String, dynamic> json) {
    namaPetugas = json['nama_petugas'];
    jabatanPetugas = json['jabatan_petugas'];
    noTelpPetugas = json['no_telp_petugas'];
    alamatPetugas = json['alamat_petugas'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama_petugas'] = this.namaPetugas;
    data['jabatan_petugas'] = this.jabatanPetugas;
    data['no_telp_petugas'] = this.noTelpPetugas;
    data['alamat_petugas'] = this.alamatPetugas;
    return data;
  }
}