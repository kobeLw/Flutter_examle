import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoNavigationBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('ios导航栏',style: TextStyle(color: Colors.white),),
        actionsForegroundColor: Colors.white,
        previousPageTitle: "返回",
        backgroundColor: Colors.lightBlue
      ),
      child: Center(
        child: Text('hfwefhkjjfkew'),
      ),
    );
  }
}