import 'package:flutter/material.dart';
import 'package:music_player/home/tab_screen.dart';
import 'package:music_player/other%20screens/splash%20screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      canvasColor:const Color.fromARGB(255,36,19,60),
      ),
      home: const SplashScreen()
    );
  }
}


