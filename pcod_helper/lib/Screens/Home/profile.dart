
import 'package:flutter/material.dart';
import 'package:pcod_helper/Services/Database.dart';
import 'package:pcod_helper/Services/auth.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  final Auth _auth = new Auth();
  int periods;
  bool acne;
  bool bleeding;
  bool darkening;
  bool headache;
  bool hairgrowth;
  bool  baldness;
  bool weightGain;

  void initState(){
    Firestore.instance.collection("test").limit(1).getDocuments().then((doc) => {
          doc.documents.forEach((element) {
            setState(() {
               periods = element["periods"];
               acne = element["acne"];
               bleeding = element["Bleeding"];
               darkening = element["Darkening"];
               headache = element["Headache"];
               hairgrowth = element["hairgrowth"];
                baldness = element["baldness"];
               weightGain  = element["WeightGain"];
            });

          })
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    DocumentReference docRef = Firestore.instance.collection("test").document(_auth.getUid());
    return Scaffold(
      body: ListView(
        children: [
          Text("Periods  " + periods.toString()),
        ],
      ),
    );
  }
}

