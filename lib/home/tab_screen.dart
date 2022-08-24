




import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:music_player/functions/music_functions.dart';
import 'package:music_player/functions/music_list.dart';
import 'package:music_player/music%20screens/liked/liked_screen.dart';
import 'package:music_player/music%20screens/my%20music/my_music.dart';
import 'package:music_player/music%20screens/playlist/playlist_screen.dart';
import 'package:music_player/second%20screens/search/search_screen.dart';
import 'package:music_player/second%20screens/setting/settings.dart';

class TabHomeScreen extends StatefulWidget {
  const TabHomeScreen({Key? key}) : super(key: key);

  @override
  State<TabHomeScreen> createState() => _TabHomeScreenState();
}

class _TabHomeScreenState extends State<TabHomeScreen> {

  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupPlaylist();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    audioPlayer.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
         
          appBar: AppBar(
            toolbarHeight: 85,
            title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.5),
              child: Text('BEATS'),
            ),
            titleTextStyle:
                const TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx1) {
                    return const SearchScreen();
                  }));
                },
                icon: const Icon(Icons.search_rounded),
                iconSize: 30,
              ),
              const SizedBox(
                width: 5,
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx1) {
                    return const SettingsScreen();
                  }));
                },
                icon: const Icon(Icons.settings),
                iconSize: 30,
              ),
              const SizedBox(
                width: 20,
              ),
            ],
            backgroundColor: const Color.fromARGB(255, 36, 19, 60),
            elevation: 0,
            bottom: const TabBar(
                indicatorColor: Colors.transparent,
                labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                unselectedLabelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                tabs: [
                  Tab(
                    text: 'My Music',
                  ),
                  Tab(
                    text: 'Liked',
                  ),
                  Tab(
                    text: 'Playlist',
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            MyMusicScreen(),
            LikedScreen(),
            PlaylistScreen(),
          ]),
           bottomSheet: Padding(
             padding: const EdgeInsets.all(8.0),
             child: functionMiniPlayer(context),
           ),
        ),
      ),
    );

    
  }
}
