import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFunction{
  
  
  void addTask(){
    FirebaseFirestore.instance.collection("Task").add()
  }
}