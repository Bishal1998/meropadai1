import 'package:flutter/material.dart';

class English extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English'),
        centerTitle: true,
      ),
      body: Card(
        child: Center(child: Text('Hello World'),),
      )
      );
  }
}