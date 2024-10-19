import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/firebase_options.dart';
import 'package:fluttertest/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const flutterApp());

}
class flutterApp extends StatelessWidget{
  const flutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "poppins"),);
  }
}

