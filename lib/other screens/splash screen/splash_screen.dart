
import 'package:flutter/material.dart';
import 'package:music_player/home/tab_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getMyMusicScreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 35, 19, 50),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/audio/music-notes.png',
                height: 90,
              ),
             const  SizedBox(
                height: 15,
              ),
              const Text(
                'BEATS',
                style: TextStyle(
                    color: Color.fromARGB(242, 128, 69, 168),
                    fontWeight: FontWeight.w900,
                    fontSize: 35),
              )
            ],
          ),
        ));
  }

  Future<void> getMyMusicScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => TabHomeScreen()));
  }
}