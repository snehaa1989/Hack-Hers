import 'package:flutter/material.dart';
import 'item_Name.dart';
//import '../screens/info_page.dart';
import '../Screens/yoga1.dart';
import '../Screens/lifestyle.dart';
class ReusableCard2 extends StatelessWidget {
  ReusableCard2({@required this.images,@required this.head,@required this.desc});
  //final Color colors;
  final AssetImage images;
  final String head;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: FittedBox(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) =>lifestyle()), // RETURN  LIFESTYLE TIPS DART FILE
            );
          },
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 5,
            child: Row(
              children:<Widget> [
                ItemName(heading: head,descript: desc),
                Container(
                  height:90.0 ,
                  width: 100.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: images,
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
/*void openPage(String img,String title){
    Navigator.pushNamed(context, '/productPage', arguments: {'image':'$img', 'title':'$title'});
  }*/
}
