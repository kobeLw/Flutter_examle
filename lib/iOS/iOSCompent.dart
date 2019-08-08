import 'package:flutter/material.dart';
import 'CupertinoActivityIndicator.dart';
import 'CupertinoAlertDialogPage.dart';

class IOSComponentPage extends StatelessWidget {
  final titleArr = ["CupertinoActivityIndicator", "CupertinoAlertDialog"];
  final pushPage = [CupertinoActivityIndicatorPage(), CupertinoAlertDialogPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('iOSComponent'),
      ),
      body: ListView.separated (
        padding: EdgeInsets.all(5.0),
        itemCount: titleArr.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text(titleArr[index],style: TextStyle(fontSize: 20),),
            onTap: () {
              Navigator.push(context, 
                MaterialPageRoute(
                  builder: (context) => pushPage[index]
                )
              );
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return new Divider(height: 1.0, color: Color(0xFFcbcbcb),);
        },
      ),
    );
  } 
}