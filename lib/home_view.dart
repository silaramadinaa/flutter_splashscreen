import 'package:flutter/material.dart';
import 'package:flutter_splashscreen/screens/petugas_screen.dart';
import 'package:flutter_splashscreen/screens/anggota_screen.dart';
import 'package:flutter_splashscreen/screens/buku_screen.dart';
import 'package:flutter_splashscreen/screens/user_screen.dart';
import 'package:flutter_splashscreen/table_buku.dart';
import 'package:flutter_splashscreen/table_peminjaman.dart';
import 'package:flutter_splashscreen/table_petugas.dart';
import 'package:flutter_splashscreen/table_anggota.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(child: Text('Peminjaman Buku')),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => PetugasScreen(),
                  ),
                );
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.people,
                      size: 70,
                      color: Colors.brown,
                    ),
                    Text("Petugas", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => AnggotaScreen(),
                  ),
                );
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.people_alt,
                      size: 70,
                      color: Colors.brown,
                    ),
                    Text("Anggota", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => BukuScreen(),
                  ),
                );
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.book,
                      size: 70,
                      color: Colors.brown,
                    ),
                    Text("Buku", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => TablePeminjaman(),
                  ),
                );
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.card_membership,
                      size: 70,
                      color: Colors.brown,
                    ),
                    Text("Peminjaman", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
