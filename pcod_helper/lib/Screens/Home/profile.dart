
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.only(left: 40),
            child: Text("Profile", style: TextStyle(color: Colors.black,fontSize: 40, fontWeight: FontWeight.bold),),
          ),
          AspectRatio(
            aspectRatio: 16/9,
            child: Image.asset("Images/profile.PNG")),
          profileField(field: "Periods", value: periods.toString(),),
          SizedBox(height: 30,),
          profileField1(field: "Baldness", value: baldness,),
          SizedBox(height: 30,),
          profileField1(field: "Darkening", value: darkening,),
          SizedBox(height: 30,),
          profileField1(field: "Heavy Bleeding", value: bleeding,),
          SizedBox(height: 30,),
          profileField1(field: "Excessive Hairgrowth", value: hairgrowth,),
          SizedBox(height: 30,),
          profileField1(field: "Headaches", value: headache,),
          SizedBox(height: 30,),
          profileField1(field: "Acne", value: acne,),
          SizedBox(height: 30,),
          profileField1(field: "Weight gain", value: weightGain,)
        ],
      ),
    );
  }
}


class profileField extends StatelessWidget {
  @override
  String field;
  String value;
  profileField({this.field, this.value});
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(left: 40),
          width: MediaQuery.of(context).size.width/2,
            child: Text(field, textAlign: TextAlign.start,),

        ),
        Container(
          width: MediaQuery.of(context).size.width/2,
          child: Center(
            child: Text(value),
          ),
        ),
      ],
    );
  }
}

class profileField1 extends StatelessWidget {
  @override
  String field;
  bool value;
  profileField1({this.field, this.value});
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(left: 40),
          width: MediaQuery.of(context).size.width/2,
            child: Text(field, textAlign: TextAlign.start),

        ),
        value == true ? Container(
          width: MediaQuery.of(context).size.width/2,
          child: Center(
            child: Text("Yes"),
          ),
        ) : Container(
          width: MediaQuery.of(context).size.width/2,
          child: Center(
            child: Text("No"),
          ),
        )
      ],
    );
  }
}
