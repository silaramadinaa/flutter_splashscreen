import 'package:flutter/material.dart';

class TableAnggota extends StatefulWidget {
  @override
  State<TableAnggota> createState() => _TableAnggotaState();
}

class _TableAnggotaState extends State<TableAnggota> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Data Table Anggota'),
        ),
        body: ListView(children: <Widget>[
          DataTable(
            columns: [
              DataColumn(label: Text('Id Anggota')),
              DataColumn(label: Text('Kode Anggota')),
              DataColumn(label: Text('Nama Anggota')),
              DataColumn(label: Text('Jk Anggota')),
              DataColumn(label: Text('Jurusan Anggota')),
              DataColumn(label: Text('No Telp Anggota')),
              DataColumn(label: Text('Alamat Anggota')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('2011')),
                DataCell(Text('1A11')),
                DataCell(Text('Lala')),
                DataCell(Text('Perempuan')),
                DataCell(Text('RPL')),
                DataCell(Text('01310097712')),
                DataCell(Text('Kp.Bojong')),
              ]),
              DataRow(cells: [
                 DataCell(Text('2012')),
                DataCell(Text('2A11')),
                DataCell(Text('Dina')),
                DataCell(Text('Perempuan')),
                DataCell(Text('RPL')),
                DataCell(Text('08310097712')),
                DataCell(Text('Cangkuang')),
              ]),
              DataRow(cells: [
                DataCell(Text('2013')),
                DataCell(Text('3A11')),
                DataCell(Text('Silvi')),
                DataCell(Text('Perempuan')),
                DataCell(Text('RPL')),
                DataCell(Text('03310097712')),
                DataCell(Text('Kopo')),
              ]),
            ],
          )
        ]),
      ),
    );
  }
}
