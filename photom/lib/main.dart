import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("PHOTOM"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () async {
                    final cameras = await availableCameras();
                    final firstCamera = cameras.first;
                    print(firstCamera);
                  },
                  child: Text("사진 찍기(카메라)"),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("사진 선택(앨범)"),
              )
            ],
          ),
        ),
      ),
    );
  }
}