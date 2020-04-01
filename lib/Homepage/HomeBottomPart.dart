import 'package:flutter/material.dart';
import 'package:meropadai/class11.dart';
import 'package:meropadai/class12.dart';
import 'package:meropadai/csit/csit_final.dart';
import 'package:meropadai/see/see_final.dart';

var bottomContainer = Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Our Courses",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
            Spacer(),
            Text(
              "View All",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 180.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: courseCards,
        ),
      ),
    ],
);

List<CourseCard> courseCards = [
  CourseCard("assets/book.jpg", "SEE", SEE()),
  CourseCard("assets/book.jpg", "Class 11", Class11()),
  CourseCard("assets/book.jpg", "Class 12", Class12()),
  CourseCard("assets/book.jpg", "CSIT", CSIT()),
];
class CourseCard extends StatelessWidget {
  final String imagePath, facultyName;
  final routePage;

  CourseCard(
    this.imagePath,
    this.facultyName,
    this.routePage,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
          child: InkWell(
            onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) { return routePage();}),);},
            child: Stack(
            children: <Widget>[
              Container(
                height: 180.0,
                width: 160.0,
                child: Image.asset(imagePath,
                fit: BoxFit.cover,
                ),
              ),
              Positioned(
               left: 0.0,
               bottom: 0.0,
               height: 80.0,
               width: 160.0,
               child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.blueAccent, Colors.blueAccent.withOpacity(0.1),
                    ],
                  ),
                ), 
               ),
              ),
              Positioned(
                left: 10.0,
                bottom: 10.0,
                child: Text(facultyName,
                style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 15.0 
                ),
                ),
              ),
            ],
        ),
          ),
      ),
    );
  }
}
