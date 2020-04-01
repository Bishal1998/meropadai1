import 'package:flutter/material.dart';
import 'package:meropadai/csit/sem_1.dart';
import 'package:meropadai/csit/sem_2.dart';
import 'package:meropadai/csit/sem_3.dart';
import 'package:meropadai/csit/sem_4.dart';
import 'package:meropadai/csit/sem_5.dart';
import 'package:meropadai/csit/sem_6.dart';
import 'package:meropadai/csit/sem_7.dart';
import 'package:meropadai/main_drawer.dart';

class CSIT extends StatefulWidget {
  @override
  _CSITState createState() => _CSITState();
}

class _CSITState extends State<CSIT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('CSIT'),
        ),
         body: Container(
           decoration: BoxDecoration(
             color: Colors.blueGrey[200]
           ),
           child: GridView.count( 
        crossAxisCount: 2,
        padding: EdgeInsets.all(20.0),
        childAspectRatio: 0.9,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Sem1();
                }));
              },
            child: myGridItems("First Semester", "assets/technology.jpg", 0xFFC2185B, 0xFF8BBD0),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Sem2();
                }));
              },
            child: myGridItems("Second Semester", "assets/technology.jpg", 0xFFC2185B, 0xFF8BBD0),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Sem3();
                }));
              },
            child: myGridItems("Third Semester", "assets/technology.jpg", 0xFFC2185B, 0xFF8BBD0),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Sem4();
                }));
              },
            child: myGridItems("Fourth Semester", "assets/technology.jpg", 0xFFC2185B, 0xFF8BBD0),
            ),
             GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Sem5();
                }));
              },
            child: myGridItems("Fifth Semester", "assets/technology.jpg", 0xFFC2185B, 0xFF8BBD0),
            ),
             GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Sem6();
                }));
              },
            child: myGridItems("Sixth Semester", "assets/technology.jpg", 0xFFC2185B, 0xFF8BBD0),
            ),
             GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Sem7();
                }));
              },
            child: myGridItems("Seventh Semester", "assets/technology.jpg", 0xFFC2185B, 0xFF8BBD0),
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
