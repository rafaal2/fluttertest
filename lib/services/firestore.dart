import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FirestoreService{
  final CollectionReference notes = FirebaseFirestore.instance.collection("notes");

  Future<void> addNote(String note){
    return notes.add({
      "note": note,
      "timestamp": Timestamp.now(),
    });
  }

}