import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // 미래 발생할 타입 : Futrue
  Future<String> useRootBundle() async {
    return await rootBundle.loadString('resources/assets/text/my_text.txt');
  }
  Future<String> useDefaultAssetBundle(BuildContext context) async {
    return await DefaultAssetBundle.of(context).loadString("resources/assets/text/my_text.txt");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("test"),
        ),
        body: Column(
          children: [
            Image.asset("resources/images/icon.jpg"),
            Image.asset("resources/images/icon/user.png"),
            FutureBuilder(
                future: useRootBundle(),
                builder: (context, snapshot ) {
                  return Text("rootBundle : ${snapshot.data}");
                }
            ),
            FutureBuilder(
                future: useDefaultAssetBundle(context),
                builder: (context, snapshot ) {
                  return Text("DefaultAssetBundle : ${snapshot.data}");
                }
            )
          ],
        ),
      ),
    );
  }
}