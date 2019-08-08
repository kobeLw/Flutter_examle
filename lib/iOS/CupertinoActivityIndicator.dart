import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorPage extends StatefulWidget {
  @override
  _CupertinoActivityIndicatorPageState createState() =>
      _CupertinoActivityIndicatorPageState();
}

class _CupertinoActivityIndicatorPageState
    extends State<CupertinoActivityIndicatorPage> {
  bool _isShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CupertinoActivityIndicator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoButton(
              color: Colors.lightBlue,
              child: Text('点我出来菊花', style: TextStyle(color: Colors.white)),
              onPressed: () {
                setState(() {
                  _isShow = !_isShow;
                });
              },
              pressedOpacity: 1.0,
            ),
            new Offstage(
              offstage: _isShow,
              child: CupertinoActivityIndicator(animating: true,radius: 20,)
            )
            
          ],
        ));
  }
}
