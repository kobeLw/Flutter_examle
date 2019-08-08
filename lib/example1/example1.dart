import 'package:flutter/material.dart';
import './airplay.dart';
import './email.dart';
import './home.dart';
import './page.dart';

void main() => runApp(Example1Page());

class Example1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('example1')),
        body: BottomNavigationWidget()
      );
  }

  
}

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  List<Widget> list = List();
  int _currentIndex = 0;

  @override
  void initState() {
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PageScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color:_BottomNavigationColor
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: _BottomNavigationColor
              )
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color:_BottomNavigationColor
            ),
            title: Text(
              'Email',
              style: TextStyle(
                color: _BottomNavigationColor
              )
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color:_BottomNavigationColor
            ),
            title: Text(
              'Pages',
              style: TextStyle(
                color: _BottomNavigationColor
              )
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color:_BottomNavigationColor
            ),
            title: Text(
              'Airplay',
              style: TextStyle(
                color: _BottomNavigationColor
              )
            )
          )
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}