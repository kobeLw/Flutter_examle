import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoAlertDialog'),
      ),
      body: Center(
        child: CupertinoButton(
          color: Colors.lightBlue,
          child: Text('点我出来弹窗', style: TextStyle(color: Colors.white)),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: Text('你知道我在等你吗'),
                    content: Text('哈哈哈哈哈哈哈哈'),
                    actions: <Widget>[
                      CupertinoButton(
                        child: Text('取消'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoButton(
                        child: Text('确定'),
                        onPressed: () {},
                      )
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
