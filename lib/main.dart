import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("newApp"),
        ),
        body: Center(
          child: Text(
            "hello world",
            style: TextStyle(color: Colors.blue, fontSize: 50),
          ),
        ),
      ),
    ),
  );
}
