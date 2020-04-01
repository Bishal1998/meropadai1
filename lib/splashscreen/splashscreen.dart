import 'package:flutter/material.dart';
import 'dart:async';
import 'package:meropadai/Homepage/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp(),
    ),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.blueAccent,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Container(
            child: Image.asset("assets/finallogo.png"),
            height: 150.0,
           ),
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Title(color: Colors.white, 
                child: Text("Mero Padai",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0
                ),
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Let's Learn in the Open Platform"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 1,
              ),
            ),
         ],
       ),
     ), 
    );
  }
}