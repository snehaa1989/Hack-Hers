import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcod_helper/Screens/Home/about.dart';
import 'package:pcod_helper/Screens/Home/profile.dart';
import 'package:pcod_helper/Screens/Home/test.dart';
import 'package:pcod_helper/Screens/fitness_screen.dart';
import 'package:pcod_helper/Services/auth.dart';
import 'package:pcod_helper/Screens/Period_Tracker/Starter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Auth _auth = new Auth();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Home",
            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
        actions: [
          FlatButton.icon(
            label: Text("SignOut",),
            icon: Icon(Icons.person),
            onPressed: () async {
              await _auth.SignOut();
            },

          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Images/backgroundColor.PNG",),
                  fit: BoxFit.cover
                )
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /3,
              child: Image.asset("Images/homeImage.PNG", fit: BoxFit.contain,),
            ),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Card(
                        child: RaisedButton(
                          elevation: 10,
                          color: Colors.white,
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Test()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                  width:  MediaQuery.of(context).size.width/3,
                                  height: MediaQuery.of(context).size.height/4,
                                  child: Image.asset("Images/test.PNG", fit: BoxFit.contain,)
                              ),
                              Text("Test", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ],
                          )
                        ),
                      ),
                      Card(
                        
                        child: RaisedButton(
                          elevation: 10,
                          color: Colors.white,
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AboutSection()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                  width:  MediaQuery.of(context).size.width/3,
                                  height: MediaQuery.of(context).size.height/4,
                                  child: Image.asset("Images/about.png", fit: BoxFit.contain,)
                              ),
                              Text("About", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 10,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Fitness()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                width:  MediaQuery.of(context).size.width * 1/3,
                                height: MediaQuery.of(context).size.height/4,
                                child: Image.asset("Images/fitness.PNG", fit: BoxFit.contain,),
                              ),
                              Text("Fitness", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: RaisedButton(
                        color: Colors.white,
                        onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tracker()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              width:  MediaQuery.of(context).size.width * 1/3,
                              height: MediaQuery.of(context).size.height/4,
                              child: Image.asset("Images/tracker.png", fit: BoxFit.contain,),
                            ),
                            Text("Tracker", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                          ],
                        )
                      ),),
                    ],
                  ),
                ],
              ),
            )
          ),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width - 100,
            child: RaisedButton(
              color: Colors.black,
              child: Container(
                color: Colors.pink,
                height: 100,
                width: MediaQuery.of(context).size.width *2.58 /3,
                child: Center(child: Text("Profile", style : TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold)) ,),
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
          )
        ],
      )
    );
  }
}
