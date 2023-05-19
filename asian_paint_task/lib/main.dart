import 'package:asian_paint_task/Screen7.dart';
import 'package:asian_paint_task/camera.dart';
import 'package:asian_paint_task/pdf1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/services.dart';

import 'Screen1.dart';

void main() {
  //debugPaintSizeEnabled = true;
  // debugPaintPointersEnabled = true;
  // debugPaintLayerBordersEnabled = true;
  // debugPaintBaselinesEnabled = true;

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(0, 28, 9, 9),
      ),
    );

    //this for hiding the status bar
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
