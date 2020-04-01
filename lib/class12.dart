import 'package:flutter/material.dart';
import 'package:meropadai/main_drawer.dart';

void main() => runApp(MaterialApp(home: Class12()));
class Class12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Class 12'),
        ),
         
    );
  }
}