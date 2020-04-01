import 'package:flutter/material.dart';
import 'package:meropadai/main_drawer.dart';


class Class11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Class 11'),
        ),
      body: SingleChildScrollView(
        child: Center(child: Text('Hey there'),)
      ),
    );
  }
}