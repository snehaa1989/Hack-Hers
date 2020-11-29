import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutSection extends StatefulWidget {
  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
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
              child: Image.asset("Images/aboutMain.PNG", fit: BoxFit.fill,),
            ),
            CarouselSlider(
              options: CarouselOptions(height: MediaQuery.of(context).size.height / 2),
              items: [
                ImageCard(url: "Images/about1.png",),
                ImageCard(url: "Images/about2.png",),
                ImageCard(url: "Images/about3.png",),
                ImageCard(url: "Images/about4.png",),
                ImageCard(url: "Images/about5.png",),

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
