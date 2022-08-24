

import 'package:flutter/material.dart';
import 'package:music_player/functions/music_functions.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 36, 19, 60),
          elevation: 0,
        ),
        body: Column(
          children: [
             SizedBox(
              height: screenHeight*0.02,
            ),
             Center(
                child: Image(
              image: const AssetImage('assets/audio/settings (1).png'),
              height: screenHeight*0.16,
            )),
             SizedBox(
              height: screenHeight*0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text('Communication',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white)),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.mail,
                        size: 24,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text('Contact Us',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.5,
                              color: Colors.white))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.message,
                        size: 24,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text('Feedback',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.5,
                              color: Colors.white))
                    ],
                  ),
                 SizedBox(
                    height: screenHeight*0.001,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.notifications_active,
                        size: 24,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      const Text('Notification',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.5,
                              color: Colors.white)),
                       SizedBox(width: screenWidth*0.25),
                      IconButton(
                          onPressed: () {},
                          icon:  Icon(
                            Icons.toggle_on_sharp,
                            size: screenHeight*0.059,
                            color: Colors.blue,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1.5,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text('Info',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white)),
                    ],
                  ),
                   SizedBox(
                    height: screenHeight*0.02,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.privacy_tip,
                        size: 24,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: screenWidth*0.05,
                      ),
                      const Text('PRIVACY POLICY',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.5,
                              color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    height: screenHeight*0.02,
                  ),
                  Row(
                    children:  [
                      const Icon(
                        Icons.share,
                        size: 24,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: screenWidth*0.05,
                      ),
                      const Text('SHARE',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.5,
                              color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    height: screenHeight*0.02,
                  ),
                  Row(
                    children:  [
                     const Icon(
                        Icons.info,
                        size: 24,
                        color: Colors.white,
                      ),
                       SizedBox(
                        width: screenWidth*0.05,
                      ),
                      const Text('ABOUT',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.5,
                              color: Colors.white)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}