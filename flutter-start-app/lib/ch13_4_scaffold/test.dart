import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [
    Text('First Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    Text('Second Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    Text('Third Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    Text('Fourth Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Theme(
              data: Theme.of(context).copyWith(cardColor: Colors.white),
              child: Container(
                height: 48.0,
                alignment: Alignment.center,
                child: Text('AppBar Bottom Text'),
              ),
            ),
          ),
        ),
      )
    );
  }
}