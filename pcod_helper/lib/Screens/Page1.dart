import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height  * 0.99/ 2,
                child: Image.asset("Images/2.png", fit: BoxFit.fill,),
              ),
              CarouselSlider(
                options: CarouselOptions(height: MediaQuery.of(context).size.height / 2),
                items: [
                  ImageCard(url: "Images/1.png",),
                  ImageCard(url: "Images/img.png",),
                  ImageCard(url: "Images/4.png",),
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