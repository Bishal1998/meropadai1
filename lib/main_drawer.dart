import 'package:flutter/material.dart';
import 'package:meropadai/Homepage/home.dart';
import 'package:meropadai/class11.dart';
import 'package:meropadai/class12.dart';
import 'package:meropadai/csit/csit_final.dart';
import 'package:meropadai/see/see_final.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
     child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                Colors.blue[800],
                Colors.blue[400],
              ])
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Material(
                    child: Image.asset('assets/finallogo.png',width: 50,height: 50,)
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(5.0,12.0,1.0,1.0),child: Text('MERO PADAI',style: TextStyle(fontSize: 30.0,),),),
                  Text("Let's Learn In The Open Platform", style: TextStyle(fontSize: 12.0,),),
                ],
              ),
            )
            ),
           CustomListTile(Icons.home,'Home',()=>{{Navigator.of(context).pop()} , Navigator.of(context).push(MaterialPageRoute(builder: (context){return MyApp();}),)}),
           CustomListTile(Icons.library_books,'SEE',()=>{{Navigator.of(context).pop()} , Navigator.of(context).push(MaterialPageRoute(builder: (context){return SEE();}),)}),
           CustomListTile(Icons.library_books,'Class 11',()=>{{Navigator.of(context).pop()} , Navigator.of(context).push(MaterialPageRoute(builder: (context){return Class11();}),)}),
           CustomListTile(Icons.library_books,'Class 12',()=>{{Navigator.of(context).pop()} , Navigator.of(context).push(MaterialPageRoute(builder: (context){return Class12();}),)}),
           CustomListTile(Icons.library_books,'CSIT',()=>{{Navigator.of(context).pop()} , Navigator.of(context).push(MaterialPageRoute(builder: (context){return CSIT();}),)}),
           CustomListTile(Icons.share, 'Share', ()=>{Share.share('You can download this app from https://meropadai.com/')}),
           CustomListTile(Icons.star, 'Rate This App', ()=>{launch("http://youtube.com")}),
        ], 
      ), 
    );
  }
}


class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;
  CustomListTile(this.icon,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[400])),
        ),
        child: InkWell(
          splashColor: Colors.blueAccent,
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text, style: TextStyle(
                        fontSize: 16.0,
                      ),)
                    ),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}