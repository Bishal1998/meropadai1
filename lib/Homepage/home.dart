import 'package:flutter/material.dart';
import 'HomeTopPart.dart';
import 'HomeBottomPart.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<bool> _onBackPressed(){
    return showDialog(context: context,
    builder: (context)=>AlertDialog(
      title: Text("Do you really want to exit the app ?"),
      actions: <Widget>[
        FlatButton(onPressed: ()=>Navigator.pop(context,false), 
        child: Text("No")),
        FlatButton(onPressed: ()=>SystemNavigator.pop(),
        child: Text("Yes")),
      ],
    )); 
  }
  PageController _pageController;

  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
        child: Scaffold(
        resizeToAvoidBottomPadding: false,
        bottomNavigationBar: CurvedNavigationBar(
          // initialIndex: pageIndex,
          height: 70.0,
          color: Colors.blueAccent,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.blueAccent,
          items: <Widget>[
            Icon(Icons.favorite),
            // Icon(Icons.search),
            Icon(Icons.home),
            // Icon(Icons.add_shopping_cart),
            Icon(Icons.dashboard),
          ],
          animationDuration: Duration(
           milliseconds: 200, 
          ),
          index: 1,
          animationCurve: Curves.bounceInOut,
          onTap: (int index){
            setState(() {
              _pageController.jumpToPage(index);
            });
          },
          ),
        body: SingleChildScrollView(
            child: Column(
            children: <Widget>[
            TopContainer(),
            bottomContainer,
            
              ],
              ),
        ),
      ),
    );
  }
}
 //       PageView(
      //     controller: _pageController,
      //   children: <Widget>[
      //      MyApp(),
      //      Category(),
      //      Favourite(),
      //  ],
      //  onPageChanged: (int index){
      //      setState(() {
      //        _pageController.jumpToPage(index);
      //      });
      //  }, 
      // ),