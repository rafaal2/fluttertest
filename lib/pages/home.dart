import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContainer(),
          SizedBox(height: 30),
          Column(crossAxisAlignment: CrossAxisAlignment.start ,
            children: [Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("categorias",
                        style: TextStyle(color: Colors.orangeAccent, fontSize: 18, fontWeight: FontWeight.w600),),
            ),
              SizedBox(height: 15,),
              Container(height: 150, color: Colors.green,
              child: ListView.builder(itemBuilder: (context, index){
                return Container();
              }),)
          ],
          )
        ],
      ),
    );
  }

  Container buildContainer() {
    return Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: const Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0)
          ]),
          child: TextField(
              decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "procurar", hintStyle: TextStyle(color: Colors.orangeAccent, fontSize: 16),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
          )),
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
