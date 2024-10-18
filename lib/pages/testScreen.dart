import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertest/models/categoryModel.dart';

class testScreen extends StatelessWidget {
  testScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Página'),
      ),
      body: Center(
        child: Text('Conteúdo da Página'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação a ser realizada
        },
        child: Icon(Icons.add),
      ),
    );

  }}