import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSatu extends StatelessWidget {
  const HomeSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Center(child: Text('Selamat Datang di Peminjaman Buku')),
        ),
      ),
    );
  }
}