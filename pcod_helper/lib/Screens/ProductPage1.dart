import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    String selectedImg;
    String selectTitle;
    String selectText;
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    selectedImg = arguments['image'];
    selectTitle = arguments['title'];
    selectText = arguments['text'];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[

          Column(
            children: <Widget>[
              SizedBox(height: 90,),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text('$selectTitle', style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold)),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[

                                  SizedBox(height: 10,),

                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    margin: EdgeInsets.only(right: 20),
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 100,
                                height: 100,
                                padding: EdgeInsets.all(40),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/$selectedImg.png'),
                                        fit: BoxFit.contain

                                )
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Text('What To Eat', style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          //margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.pinkAccent,
                              boxShadow: [BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 15,
                                  spreadRadius: 1
                              )]
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 2.8/3,
                                height: 230,
                                padding: EdgeInsets.all(40),
                                child: Text('$selectText',style: TextStyle(fontSize:15,fontWeight:FontWeight.w700 ),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
              ),
              /*Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        FaIcon(FontAwesomeIcons.calendar),
                        Text('Today')
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Text('Settings')
                      ],
                    ),
                  ],
                ),
              )*/
            ],
          )
        ],
      ),
    );
  }
}