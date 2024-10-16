import 'package:flutter/material.dart';
import 'package:fluttertest/pages/home.dart';

void main() {
  runApp(const flutterApp());

}
class flutterApp extends StatelessWidget{
  const flutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "poppins"),);
  }
}

