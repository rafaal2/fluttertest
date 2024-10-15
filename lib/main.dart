import 'package:flutter/material.dart';
import 'package:fluttertest/pages/home.dart';

void main() {
  runApp(const flutterApp());

}
class flutterApp extends StatelessWidget{
  const flutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const homePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "poppins"));
  }
}


// body: Center(
// child: Text(
// "hello world",
// style: TextStyle(color: Colors.blue, fontSize: 50, fontFamily: "poppins"),
// ),
// ),
// ),
// ),
// );
