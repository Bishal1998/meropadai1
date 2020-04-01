import 'package:flutter/material.dart';
import 'package:meropadai/main_drawer.dart';
import 'package:meropadai/see/ehp.dart';
import 'package:meropadai/see/english.dart';
import 'package:meropadai/see/maths.dart';
import 'package:meropadai/see/nepali.dart';
import 'package:meropadai/see/opt_maths.dart';
import 'package:meropadai/see/science.dart';
import 'package:meropadai/see/social.dart';


class SEE extends StatefulWidget {
  @override
  _SEEState createState() => _SEEState();
}

class _SEEState extends State<SEE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('SEE'),
        centerTitle: true,
        ),
         body: Container(
           decoration: BoxDecoration(
             color: Colors.blueGrey[200]
           ),
           child: GridView.count( 
        crossAxisCount: 2,
        padding: EdgeInsets.all(10.0),
        childAspectRatio: 0.9,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return English();
                }),);
              }, 
            child: myGridItems("English", "assets/books.jpg", 0xFF009688, 0xFF004D40),
            ),
            GestureDetector( 
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Nepali();
                }));
              },

            child: myGridItems("Nepali", "assets/books.jpg", 0xFFBBDEFB, 0xFF1565C0),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Maths();
                }));
              },
           child: myGridItems("C. Maths", "assets/books.jpg", 0xFF2F7D32, 0xFF81C784),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Science();
                }));
              },
            child: myGridItems("Science", "assets/books.jpg", 0xFFC2185B, 0xFF8BBD0),
            ),
             GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Social();
                }));
              },
            child: myGridItems("Social", "assets/books.jpg", 0xFFC2185B, 0xFF8BBD0),
            ),
             GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return EHP();
                }));
              },
            child: myGridItems("EHP", "assets/books.jpg", 0xFFC2185B, 0xFF8BBD0),
            ),
             GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Omaths();
                }));
              },
            child: myGridItems("Optional Maths", "assets/books.jpg", 0xFFC2185B, 0xFF8BBD0),
            ),
        ],
        ),
         ),   
    );
  }
}

Widget myGridItems(String gridName,String gridimage, int color1, int color2){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24.0),
      gradient: new LinearGradient(
        colors: [
          Color(color1),
          Color(color2),
        ],
        begin: Alignment.centerLeft,
        end: new Alignment(1.0, 1.0),
        ),

    ),
    child: Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.6,
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: DecorationImage(
                image: AssetImage(gridimage),
                fit: BoxFit.fill
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          
          Padding(padding: const EdgeInsets.only(left:16.0),
          child: Center(child: Text(gridName,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),))
          ),
          ],
        ),
      ],
    ),
  );
}