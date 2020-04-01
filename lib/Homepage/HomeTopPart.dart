import 'package:flutter/material.dart';
import 'customclipper.dart';
class TopContainer extends StatefulWidget {
  @override
  _TopContainerState createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 400.0,
            color: Colors.blueAccent,
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0,30.0,16.0,0.0),
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
            SizedBox(height: 60.0),
            Text(
              "What you would like to read ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:10.0),
            Padding(padding: EdgeInsets.symmetric(horizontal:32.0),
            child: Container(
              decoration: BoxDecoration(
               border: Border.all(
                 color: Colors.white,
                 width: 1.0, 
               ),
               borderRadius: BorderRadius.all(Radius.circular(70)),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0,0,5.0,5),
                child: TextField(
                  decoration: InputDecoration(
                  hintText:  "Search",
                  border: InputBorder.none,
                  suffix: Icon(Icons.search),
                 ), 
                ),
              ),
            ),
            ),
          ],
        ),
      ],
    );
  }
}
