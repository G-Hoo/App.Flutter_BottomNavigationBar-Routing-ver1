import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'bussinessScreen.dart';
import 'schoolScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    homeScreen(),
    bussinessScreen(),
    schoolScreen()
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children:_widgetOptions
        ),
        bottomNavigationBar: _bnb(),
      ),
    );
  }

  Widget _bnb() {
    return Container(
      child: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),title:Text('',style: new TextStyle(fontSize: 0))),
            BottomNavigationBarItem(icon: Icon(Icons.business),title:Text('',style: new TextStyle(fontSize: 0))),
            BottomNavigationBarItem(icon: Icon(Icons.school),title:Text('',style: new TextStyle(fontSize: 0))),
          ],
        ),
    );
  }
}

