
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcod_helper/Services/Database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pcod_helper/Services/auth.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int count = 0;
  int periods;
  bool acne;
  bool bleeding;
  bool darkening;
  bool headache;
  bool hairgrowth;
  bool  baldness;
  bool weightGain;

  Auth _auth = new Auth();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("Images/backgroundColor.PNG",),
                      fit: BoxFit.cover
                  )
              ),
              width: MediaQuery.of(context).size.width,
              child: Image.asset("Images/test1.PNG"),
            ),
          ),
          SizedBox(height: 20,),
          Card(
            elevation: 10,
            child: Row(
              children: [
                Container(color: Colors.pink,
                  width: MediaQuery.of(context).size.width * 0.5/3,
                  height: MediaQuery.of(context).size.height/3,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 2.3/3,
                  height: MediaQuery.of(context).size.height/3,
                  child: Column(
                    children: [
                      Text("How many periods you had in past one year ?",
                        style: TextStyle(
                            fontSize: 20),),
                      SizedBox(height: 80,),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],
                        ),
                        onChanged: (val){
                          periods = int.parse(val);
                        },

                      )
                    ],
                  )
                ),
              ],
            )
          ),
          Card(
              elevation: 10,
              child: Row(
                children: [
                  Container(color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.5/3,
                    height: MediaQuery.of(context).size.height/3,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 2.3/3,
                      height: MediaQuery.of(context).size.height/3,
                      child: Column(
                        children: [
                          Text("Are you facing accesive acne ?",
                            style: TextStyle(
                                fontSize: 20),),
                          SizedBox(height: 80,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RaisedButton(
                                child: Text("Yes"),
                                onPressed: (){
                                  setState(() {
                                    count++;
                                    acne = true;
                                  });
                                },
                                color: Colors.pink,
                              ),
                              RaisedButton(
                                child: Text("No"),
                                onPressed: (){
                                  setState(() {
                                    acne = false;
                                  });
                                },
                                color: Colors.pink,
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              )
          ),
          Card(
              elevation: 10,
              child: Row(
                children: [
                  Container(color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.5/3,
                    height: MediaQuery.of(context).size.height/3,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 2.3/3,
                      height: MediaQuery.of(context).size.height/3,
                      child: Column(
                        children: [
                          Text("Are you facing heavy bleeding ?",
                            style: TextStyle(
                                fontSize: 20),),
                          SizedBox(height: 80,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RaisedButton(
                                child: Text("Yes"),
                                onPressed: (){
                                  setState(() {
                                    count++;
                                    bleeding = true;
                                  });
                                },
                                color: Colors.pink,
                              ),
                              RaisedButton(
                                child: Text("No"),
                                onPressed: (){
                                  setState(() {
                                    bleeding = false;
                                  });
                                },
                                color: Colors.pink,
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              )
          ),
          Card(
              elevation: 10,
              child: Row(
                children: [
                  Container(color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.5/3,
                    height: MediaQuery.of(context).size.height/3,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 2.3/3,
                      height: MediaQuery.of(context).size.height/3,
                      child: Column(
                        children: [
                          Text("Is there pigmentation on your skin ?",
                            style: TextStyle(
                                fontSize: 20),),
                          SizedBox(height: 80,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RaisedButton(
                                child: Text("Yes"),
                                onPressed: (){
                                  setState(() {
                                    count++;
                                    darkening = true;
                                  });
                                },
                                color: Colors.pink,
                              ),
                              RaisedButton(
                                child: Text("No"),
                                onPressed: (){
                                  setState(() {
                                    darkening = false;
                                  });
                                },
                                color: Colors.pink,
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              )
          ),
          Card(
              elevation: 10,
              child: Row(
                children: [
                  Container(color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.5/3,
                    height: MediaQuery.of(context).size.height/3,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 2.3/3,
                      height: MediaQuery.of(context).size.height/3,
                      child: Column(
                        children: [
                          Text("Are you facing baldness ?",
                            style: TextStyle(
                                fontSize: 20),),
                          SizedBox(height: 80,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RaisedButton(
                                child: Text("Yes"),
                                onPressed: (){
                                  setState(() {
                                    count++;
                                    baldness = true;
                                  });
                                },
                                color: Colors.pink,
                              ),
                              RaisedButton(
                                child: Text("No"),
                                onPressed: (){
                                  baldness = false;
                                },
                                color: Colors.pink,
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              )
          ),
          Card(
              elevation: 10,
              child: Row(
                children: [
                  Container(color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.5/3,
                    height: MediaQuery.of(context).size.height/3,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 2.3/3,
                      height: MediaQuery.of(context).size.height/3,
                      child: Column(
                        children: [
                          Text("Have you excessively gained weight ?",
                            style: TextStyle(
                                fontSize: 20),),
                          SizedBox(height: 80,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RaisedButton(
                                child: Text("Yes"),
                                onPressed: (){
                                  weightGain = true;
                                  count++;
                                },
                                color: Colors.pink,
                              ),
                              RaisedButton(
                                child: Text("No"),
                                onPressed: (){
                                  weightGain = false;
                                },
                                color: Colors.pink,
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              )
          ),
          Card(
              elevation: 10,
              child: Row(
                children: [
                  Container(color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.5/3,
                    height: MediaQuery.of(context).size.height/3,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 2.3/3,
                      height: MediaQuery.of(context).size.height/3,
                      child: Column(
                        children: [
                          Text("Does your head aches often ?",
                            style: TextStyle(
                                fontSize: 20),),
                          SizedBox(height: 80,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RaisedButton(
                                child: Text("Yes"),
                                onPressed: (){
                                  headache = true;
                                  count++;
                                },
                                color: Colors.pink,
                              ),
                              RaisedButton(
                                child: Text("No"),
                                onPressed: (){
                                  headache = false;
                                },
                                color: Colors.pink,
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              )
          ),
          Card(
              elevation: 10,
              child: Row(
                children: [
                  Container(color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.5/3,
                    height: MediaQuery.of(context).size.height/3,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 2.3/3,
                      height: MediaQuery.of(context).size.height/3,
                      child: Column(
                        children: [
                          Text("Do you have excessive hair growth?",
                            style: TextStyle(
                                fontSize: 20),),
                          SizedBox(height: 80,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RaisedButton(
                                child: Text("Yes"),
                                onPressed: (){
                                  hairgrowth = true;
                                  count++;
                                },
                                color: Colors.pink,
                              ),
                              RaisedButton(
                                child: Text("No"),
                                onPressed: (){
                                  hairgrowth = false;
                                },
                                color: Colors.pink,
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              )
          ),


          RaisedButton(
            color: Colors.pink,
            child: Text("Submit", style: TextStyle(color: Colors.white),),
            onPressed: (){
              Firestore.instance.collection("test").document(_auth.getUid()).updateData({
                "periods" : periods,
                "Bleeding" : bleeding,
                "hairgrowth" : hairgrowth,
                "acne" : acne,
                "WeightGain" : weightGain,
                "baldness" : baldness,
                "Darkening" : darkening,
                "Headache" : headache,
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultPage(count: count,),
              ));
            },
          )

        ],
      ),
    );
  }
}

class ResultPage extends StatefulWidget {
  @override
  int count;
  ResultPage({this.count});
  _ResultPageState createState() => _ResultPageState(count: count);
}

class _ResultPageState extends State<ResultPage> {
  @override
  int count;
  _ResultPageState({this.count});
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16/9,
            child:  Container(
                  decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage("Images/backgroundColor.PNG",),
                  fit: BoxFit.cover
                  )
                  ),
                width: MediaQuery.of(context).size.width,
                child: Image.asset("Images/test1.PNG"),
                ),
          ),
          SizedBox(height: 50,),
          count > 4 ? Container(
            height: MediaQuery.of(context).size.height/2,
            color: Colors.pinkAccent[100],
            child: Center(
              child: Column(
                children: [
                  Image.asset("Images/warning.png",
                    height: MediaQuery.of(context).size.height/3,),
                  SizedBox(height: 20,),
                  Text(
                    "You might be at a risk of suffering from PCOD. Do get in touch with your doctors",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                ],
              ),
            )
          ):Container(
            height: MediaQuery.of(context).size.height/2,
            color: Colors.greenAccent[100],
            child: Center(
              child: Column(
                children: [
                  Image.asset("Images/correct.png"),
                  Text(
                      "Hey ! seems like you are currently free from PCOD. Keep on checking regularly!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 18,

                    ),
                  ),
                ],
              )
            )
          )
        ],
      ),
    );
  }
}
