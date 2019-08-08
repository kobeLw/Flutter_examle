import 'package:flutter/material.dart';
import './example1/example1.dart';
import './example2/example2.dart';
import './example3/example3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final titleArr = ["example1", "example2", "example3"];
  final pushPage = [Example1Page(), Example2Page(), Example3Page()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      home: Scaffold(
        appBar: AppBar(title: Text('首页')),
        body: ListView.builder(
          padding: EdgeInsets.all(5.0),
          itemCount: titleArr.length,
          itemBuilder: (BuildContext context, int index) {
            return new ListTile(
                title: Text(
              titleArr[index],
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context, 
                MaterialPageRoute(
                  builder: (context) => pushPage[index]
                )
              );
            },
            );
          },
        ),
      ),
    );
  }

}
