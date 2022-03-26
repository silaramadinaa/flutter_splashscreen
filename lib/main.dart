import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_splashscreen/controller_bindings.dart';
import 'package:flutter_splashscreen/home_view.dart';
import 'package:flutter_splashscreen/main_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      debugShowCheckedModeBanner: false,
      home: SplashScreenView(
        navigateRoute: MainScreen(),
        duration: 4800,
        imageSize: 300,
        imageSrc: "assets/images/logo.png",
        text: '',
        textType: TextType.ColorizeAnimationText,
        textStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        colors: [
          Colors.brown,
          Colors.brown,
          Colors.brown.shade400,
          Colors.brown,
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}
