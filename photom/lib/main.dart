import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:photom/camera_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final camera = cameras.first;

  runApp(MyApp(camera: camera));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.camera});
  final CameraDescription camera;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(child: HomeScreen(camera: camera)),
        ],
        onPopPage: (route, result) => route.didPop(result),
      )
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({required this.camera});
  final CameraDescription camera;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("PHOTOM"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Camera"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CameraScreen(camera: camera))
                );
              },
            ),
            ElevatedButton(
              child: Text("사진 선택(앨범)"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}