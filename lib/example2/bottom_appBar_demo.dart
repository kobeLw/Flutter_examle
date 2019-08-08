import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'homePage.dart';
import 'mePage.dart';
import 'CenterPage.dart';


class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  int _currentIndex = 0;
  List <Widget>pageList = [HomePageScreen(), CenterPageScreen(), MePageScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return CenterPageScreen();
              }
            )
          );
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
               icon:Icon(Icons.home),
               color:Colors.white,
               onPressed:(){
                 setState(() {
                   _currentIndex = 0;
                 });
               }
             ),
             IconButton(
               icon:Icon(Icons.airport_shuttle),
               color:Colors.white,
               onPressed:(){
                 setState(() {
                   _currentIndex = 2;
                 });
               }
             )
          ],
        ),
        
      )
    );
  }
}