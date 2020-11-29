import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(lifestyle());
}

class lifestyle extends StatefulWidget {
  @override
  _lifestyleState createState() => _lifestyleState();
}

class _lifestyleState extends State<lifestyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height  * 0.99/ 2,
                child: Image.asset("Images/LIFESTYLE.png", fit: BoxFit.fill,),
              ),
              CarouselSlider(
                options: CarouselOptions(height: MediaQuery.of(context).size.height / 2),
                items: [
                  ImageCard(url: "Images/lifestyle1.png",),
                  ImageCard(url: "Images/lifestyle2.png",),
                  ImageCard(url: "Images/lifestyle3.png",),
                  ImageCard(url: "Images/lifestyle4.png",),
                  ImageCard(url: "Images/lifestyle5.png",),

                ],
              ),
            ],
          )
      ),
    );
  }
}


class ImageCard extends StatelessWidget {
  String url;
  ImageCard({this.url});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Image.asset(url, fit: BoxFit.fill,),
      ),
    );
  }
}
