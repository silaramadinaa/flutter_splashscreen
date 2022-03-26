import 'package:flutter/material.dart';

class TablePetugas extends StatefulWidget {
  @override
  State<TablePetugas> createState() => _TablePetugasState();
}

class _TablePetugasState extends State<TablePetugas> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Data Table Petugas'),
        ),
        body: ListView(children: <Widget>[
          DataTable(
            columns: [
              DataColumn(label: Text('Id Petugas')),
              DataColumn(label: Text('Nama Petugas')),
              DataColumn(label: Text('Jabatan Petugas')),
              DataColumn(label: Text('No Telp ')),
              DataColumn(label: Text('Alamat Petugas')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1011')),
                DataCell(Text('Sila')),
                DataCell(Text('Admin')),
                DataCell(Text('09310097712')),
                DataCell(Text('Kp.Bojong')),
              ]),
              DataRow(cells: [
                DataCell(Text('1012')),
                DataCell(Text('Erin')),
                DataCell(Text('Admin')),
                DataCell(Text('09310097713')),
                DataCell(Text('Cangkuang')),
              ]),
              DataRow(cells: [
                DataCell(Text('1013')),
                DataCell(Text('Fuji')),
                DataCell(Text('Admin')),
                DataCell(Text('09310097714')),
                DataCell(Text('Bojong')),
              ]),
            ],
          )
        ]),
      ),
    );
  }
}
