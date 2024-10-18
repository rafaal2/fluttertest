import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertest/models/categoryModel.dart';
import 'package:fluttertest/pages/testScreen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categories = [];

  void _getGategories(){
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getGategories();
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => testScreen(),),);
          }
              , child: Text("CLICA"))
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(
        "estoque produtos",
        style: TextStyle(
          color: Colors.orangeAccent,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            "assets/icons/arrow_back_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg",
            color: Colors.orangeAccent,
            height: 30,
            width: 20,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 37,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              "assets/icons/more_horiz_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg",
              color: Colors.orangeAccent,
              height: 30,
              width: 20,
            ),
          ),
        ),
      ],
    );
  }
}
