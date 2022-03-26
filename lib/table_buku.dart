import 'package:flutter/material.dart';

class TableBuku extends StatefulWidget {
  @override
  State<TableBuku> createState() => _TableBukuState();
}

class _TableBukuState extends State<TableBuku> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Data Table Buku'),
        ),
        body: ListView(children: <Widget>[
          DataTable(
            columns: [
              DataColumn(label: Text('Id Buku')),
              DataColumn(label: Text('Kode Buku')),
              DataColumn(label: Text('Judul Buku')),
              DataColumn(label: Text('Penulis Buku')),
              DataColumn(label: Text('Penerbit Buku')),
              DataColumn(label: Text('Tahun Terbit')),
              DataColumn(label: Text('Stok')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1B')),
                DataCell(Text('1B11')),
                DataCell(Text('Dilan')),
                DataCell(Text('Pidi Baiq')),
                DataCell(Text('Gramedia')),
                DataCell(Text('2015')),
                DataCell(Text('10')),
              ]),
              DataRow(cells: [
                DataCell(Text('2B')),
                DataCell(Text('2B11')),
                DataCell(Text('Danur')),
                DataCell(Text('Risa')),
                DataCell(Text('Gramedia')),
                DataCell(Text('2011')),
                DataCell(Text('10')),
              ]),
              DataRow(cells: [
                DataCell(Text('3B')),
                DataCell(Text('3B11')),
                DataCell(Text('Milea')),
                DataCell(Text('Pidi Baiq')),
                DataCell(Text('Gramedia')),
                DataCell(Text('2015')),
                DataCell(Text('10')),
              ]),
            ],
          )
        ]),
      ),
    );
  }
}
