class BukuModel {
  bool? success;
  String? message;
  List<Data>? data;

  BukuModel({required this.success, required this.message, required this.data});

  BukuModel.fromJson(Map<String, dynamic> json) {
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
  int? kodeBuku;
  String? judulBuku;
  String? isbn;
  String? penulisBuku;
  String? penerbitBuku;
  String? tahunPenerbit;
  int? stok;
  String? cover;

  Data(
      {required this.kodeBuku,
      required this.judulBuku,
      required this.isbn,
      required this.penulisBuku,
      required this.penerbitBuku,
      required this.tahunPenerbit,
      required this.stok,
      required this.cover});

  Data.fromJson(Map<String, dynamic> json) {
    kodeBuku = json['kode_buku'];
    judulBuku = json['judul_buku'];
    isbn = json['isbn'];
    penulisBuku = json['penulis_buku'];
    penerbitBuku = json['penerbit_buku'];
    tahunPenerbit = json['tahun_penerbit'];
    stok = json['stok'];
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode_buku'] = this.kodeBuku;
    data['judul_buku'] = this.judulBuku;
    data['isbn'] = this.isbn;
    data['penulis_buku'] = this.penulisBuku;
    data['penerbit_buku'] = this.penerbitBuku;
    data['tahun_penerbit'] = this.tahunPenerbit;
    data['stok'] = this.stok;
    data['cover'] = this.cover;
    return data;
  }
}