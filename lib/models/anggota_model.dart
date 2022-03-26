class AnggotaModel {
  bool? success;
  String? message;
  List<Data>? data;

  AnggotaModel({required this.success, required this.message, required this.data});

  AnggotaModel.fromJson(Map<String, dynamic> json) {
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
  int? kodeAnggota;
  String? namaAnggota;
  String? jkAnggota;
  String? jurusanAnggota;
  String? noTelpAnggota;
  String? alamatAnggota;

  Data(
      {required this.kodeAnggota,
      required this.namaAnggota,
      required this.jkAnggota,
      required this.jurusanAnggota,
      required this.noTelpAnggota,
      required this.alamatAnggota});

  Data.fromJson(Map<String, dynamic> json) {
    kodeAnggota = json['kode_anggota'];
    namaAnggota = json['nama_anggota'];
    jkAnggota = json['jk_anggota'];
    jurusanAnggota = json['jurusan_anggota'];
    noTelpAnggota = json['no_telp_anggota'];
    alamatAnggota = json['alamat_anggota'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode_anggota'] = this.kodeAnggota;
    data['nama_anggota'] = this.namaAnggota;
    data['jk_anggota'] = this.jkAnggota;
    data['jurusan_anggota'] = this.jurusanAnggota;
    data['no_telp_anggota'] = this.noTelpAnggota;
    data['alamat_anggota'] = this.alamatAnggota;
    return data;
  }
}