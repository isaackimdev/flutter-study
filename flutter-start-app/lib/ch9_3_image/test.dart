import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test'),),
        body: Column(
          children: [
            Image(image: NetworkImage('https://picsum.photos/250?image=9')),
            Container(
              color: Colors.red,
              child: Image.asset(
                'resources/images/big.jpeg',
                width: 200,
                height: 100,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}