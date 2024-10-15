import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("newApp", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold),),
          backgroundColor: Colors.purple[700],
          centerTitle: true,
          elevation: 0.0,
          leading: Container(
            margin: EdgeInsets.all(10),
            child: SvgPicture.asset("assets/icons/arrow_back_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg", color: Colors.purple,),
            decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(10))
            ,)
        ,)
    );
  }
}
