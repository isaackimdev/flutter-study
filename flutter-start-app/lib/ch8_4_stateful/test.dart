import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Test'),
        ),
        body: MyWidget(),
      ),
    );

  }
}

class MyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {
  bool enabled = false;
  String stateText = "disabled";

  void changeCheck() {
    // setState 함수가 re-rendering 하도록 하게 한다.
    setState(() {
      if (enabled) {
        enabled = false;
        stateText = "disabled";
      } else {
        enabled = true;
        stateText = "enable";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: changeCheck,
            icon: (enabled ? Icon(Icons.check_box, size: 20,) : Icon(Icons.check_box_outline_blank, size: 20,)),
            color: Colors.red,
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: Text('$stateText', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
  
}