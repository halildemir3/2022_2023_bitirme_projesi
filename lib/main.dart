import 'package:bitirme_projesi_2/k%C4%B1saltmalar/k%C4%B1saltmalar_page.dart';
import 'package:bitirme_projesi_2/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final Uri _url = Uri.parse('https://flutter.dev');
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
