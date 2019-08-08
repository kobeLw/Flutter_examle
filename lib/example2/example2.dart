import 'package:flutter/material.dart';
import './bottom_appBar_demo.dart';

void main() => runApp(Example2Page());

class Example2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('example2')),
      body: BottomAppBarDemo()
    );
  }

}
