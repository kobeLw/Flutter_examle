import 'package:flutter/material.dart';
import './example1/example1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var titleArr = ["example1", "example2", "example3"];
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
                  builder: (context) => new Example1Page()
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
