import 'package:flutter/material.dart';

class CenterPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('center')),
      body:Center(
        child: Text('Center'),
      )
    );
  }
}