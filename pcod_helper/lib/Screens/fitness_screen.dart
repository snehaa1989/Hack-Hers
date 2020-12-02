import 'package:flutter/material.dart';
//import '../components/item_Name.dart';
import '../components/reusableCard.dart';
import '../constants.dart';
//import '../components/reusableCard.dart';
//import '../components/reusableCard.dart';
import 'package:pcod_helper/components/reusableCard1.dart';
import 'package:pcod_helper/components/reusableCard2.dart';
import 'package:pcod_helper/components/reusableCard3.dart';
import 'package:pcod_helper/Screens/Bmi-Calculator/BMI_main.dart';
class Fitness extends StatefulWidget {
  @override
  _FitnessState createState() => _FitnessState();
}

class _FitnessState extends State<Fitness> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
                'Fitness',
                style:TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
            ),
          ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              //bmi screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BMI()),
              );
            },
            label: Text('BMI',style: TextStyle(color: Colors.pink),),
            icon: Icon(Icons.emoji_emotions_outlined),
            backgroundColor: Colors.black38,

          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.track_changes),
                title: new Text('Tracker'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.person),
                title: new Text('Profile'),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(5.0),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                ReusableCard(images:AssetImage('assets/yoga.PNG'),/*colors: Colors.yellow,*/head: 'YOGA',desc: 'Exercise more!',),
                ReusableCard1(images: AssetImage('assets/diet.jpg'),/*colors: Colors.pinkAccent,*/head: 'DIET',desc: 'Eat a Balanced Diet!'),
                ReusableCard2(images: AssetImage('assets/natural.jpg'),/*colors: Colors.lightGreenAccent*/head: 'LIFESTYLE TIPS!',desc: 'Cure Fast!'),
                ReusableCard3(images: AssetImage('assets/hair1.PNG'),/*colors: Colors.lightBlueAccent,*/head: 'HAIRFALL',desc: 'Reduce hairfall to look Beautiful!'),
              ],
            ),
          )
      ),
    );
  }
}



//






