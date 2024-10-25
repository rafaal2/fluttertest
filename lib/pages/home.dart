import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertest/models/categoryModel.dart';
import 'package:fluttertest/services/firestore.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final FirestoreService firestoreService = FirestoreService();
  final TextEditingController textController = TextEditingController();

  List<CategoryModel> categories = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://img.freepik.com/vetores-premium/vetor-de-papel-de-parede-de-celular-de-fundo-de-padrao-geometrico-branco-e-cinza_53876-170009.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ElevatedButton.icon(
                onPressed: () => openNoteBox(context),
                icon: Icon(Icons.add_circle),
                label: Text("adcionar nota", style: TextStyle(color: Colors.orangeAccent),),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: buildNoteList(),
            ),
          ],
        ),
      ),
    );
  }

  void openNoteBox(BuildContext context, {String? docID}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("adicionar/editar"),
        content: TextField(
          controller: textController,
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                if(docID == null){
                  firestoreService.addNote(textController.text);
                }else{
                  firestoreService.updateNote(docID, textController.text);
                }
                textController.clear();
                Navigator.pop(context);
              },
              child: Text("adicionar"))
        ],
      ),
    );
  }

  StreamBuilder<QuerySnapshot<Object?>> buildNoteList() {
    return StreamBuilder<QuerySnapshot>(
            stream: firestoreService.getNotesStream(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text("Erro ao carregar as notas"));
              }
              if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return Center(child: Text("Nenhuma nota disponível"));
              }

              final notes = snapshot.data!.docs;

              return ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot document = notes[index];
                  String docID = document.id;
                  final note = notes[index].get('note') as String;
                  return ListTile(
                    title: Text(note),
                    trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children:[
                    IconButton(onPressed: () => openNoteBox(context, docID: docID), icon: const Icon(Icons.settings)),
                    IconButton(onPressed: () => firestoreService.deleteNote(docID), icon: const Icon(Icons.delete)),

                    ]
                    )
                  );
                },
              );
            },
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
