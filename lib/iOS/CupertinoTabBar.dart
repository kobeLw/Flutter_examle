import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../example1/airplay.dart';
import '../example1/email.dart';
import '../example1/home.dart';
import '../example1/page.dart';

class CupertinoTabBarPage extends StatelessWidget {
  final List pageList = [
    HomeScreen(),
    EmailScreen(),
    PageScreen(),
    AirplayScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: Text(
            'ios导航栏',
            style: TextStyle(color: Colors.white),
          ),
          actionsForegroundColor: Colors.white,
          previousPageTitle: "返回",
          backgroundColor: Colors.lightBlue),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.email), title: Text('Email')),
            BottomNavigationBarItem(
                icon: Icon(Icons.pages), title: Text('Pages')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                ),
                title: Text('Airplay'))
          ],
          activeColor: Colors.red,
          inactiveColor: Color(0xff333333),
          backgroundColor: Color(0xfff1f1f1),
          iconSize: 25.0,
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return pageList[index];
            },
          );
        },
      ),
    );
  }
}
