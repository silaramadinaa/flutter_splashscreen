import 'package:flutter/material.dart';

class TablePeminjaman extends StatefulWidget {
  @override
  State<TablePeminjaman> createState() => _TablePeminjamanState();
}

class _TablePeminjamanState extends State<TablePeminjaman> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Data Table Peminjaman'),
        ),
        body: ListView(children: <Widget>[
          DataTable(
            columns: [
              DataColumn(label: Text('Id Peminjaman')),
              DataColumn(label: Text('Tanggal Pinjam')),
              DataColumn(label: Text('Tanggal Kembali')),
              DataColumn(label: Text('Id Buku')),
              DataColumn(label: Text('Id Anggota')),
              DataColumn(label: Text('Id Petugas')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1AA1')),
                DataCell(Text('10 Maret 2022')),
                DataCell(Text('20 Maret 2022')),
                DataCell(Text('1B')),
                DataCell(Text('2011')),
                DataCell(Text('1011')),
              ]),
              DataRow(cells: [
                DataCell(Text('1BB1')),
                DataCell(Text('11 Maret 2022')),
                DataCell(Text('22 Maret 2022')),
                DataCell(Text('2B')),
                DataCell(Text('2012')),
                DataCell(Text('1012')),
              ]),
              DataRow(cells: [
                DataCell(Text('1CC1')),
                DataCell(Text('12 Maret 2022')),
                DataCell(Text('23 Maret 2022')),
                DataCell(Text('3B')),
                DataCell(Text('2013')),
                DataCell(Text('1013')),
              ]),
            ],
          )
        ]),
      ),
    );
  }
}
