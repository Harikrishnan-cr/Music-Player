import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';


import 'package:music_player/second%20screens/play%20music/play_music_screen.dart';

double screenHeight = 0;
double screenWidth = 0;

ValueNotifier<bool> miniPlayerVisibility = ValueNotifier(false);
final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

Widget functionMiniPlayer(BuildContext context) {
  return audioPlayer.builderRealtimePlayingInfos(
      builder: (context, realtimePlayingInfos) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const PlayMusicScreen();
        }));
      },
      onDoubleTap: () {
        miniPlayerVisibility.value = false;
        audioPlayer.pause();
//          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1){
// return TabHomeScreen();
//      }));
      },
      child: Visibility(
        visible: miniPlayerVisibility.value,
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 118, 65, 153),
              borderRadius: BorderRadius.circular(14)),
          // color: Colors.yellow,
          height: 75,
          // color: Colors.amber,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  realtimePlayingInfos.current!.audio.audio.metas.image!.path,
                  fit: BoxFit.cover,
                  height: 78,
                  width: 78,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        realtimePlayingInfos.current!.audio.audio.metas.title
                            .toString(),
                        style: const TextStyle(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        realtimePlayingInfos.current!.audio.audio.metas.artist
                            .toString(),
                        style: const TextStyle(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      audioPlayer.previous();
                    },
                    icon: const Icon(
                      Icons.skip_previous,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        audioPlayer.playOrPause();
                      },
                      icon: realtimePlayingInfos.isPlaying
                          ? const Icon(
                              Icons.pause,
                              size: 40,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.play_arrow_rounded,
                              size: 40,
                              color: Colors.white,
                            )),
                  IconButton(
                    onPressed: () {
                      audioPlayer.next();
                    },
                    icon: const Icon(
                      Icons.skip_next,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  //      Padding(
                  //   padding: const EdgeInsets.only(bottom: 32,right: 0,left: 0),
                  //   child: IconButton(onPressed: () {
                  //          miniPlayerVisibility.value = false;
                  //       }, icon: const Icon(Icons.close,size: 20,color: Colors.white,)),
                  // ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  });
}
//---------------Playlist screen start--------------------------------

Widget playlistNameScreen({required String playlistTitle, context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(65)),
        color: const Color.fromARGB(255, 118, 65, 153),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: ListTile(
            leading: const CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage('assets/audio/music-note.png')),
            title: Text(
              playlistTitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
            trailing: PopupMenuButton(
              position: PopupMenuPosition.under,
              elevation: 0,
              onSelected: (value) {
                if (value == MyListMenu.item1) {
                } else if (value == MyListMenu.item2) {
                } else if (value == MyListMenu.item3) {
//            Navigator.of(context).push(MaterialPageRoute(builder: (ctx2){
// return OpenPlaylistScreen(playListDeatails: playlistTitle);
//      }));
                }
              },
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 20,
              ),
              color: const Color.fromARGB(204, 0, 0, 0),
              itemBuilder: (context) => [
                const PopupMenuItem(
                    value: MyListMenu.item1,
                    child: Text(
                      'Rename',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
                const PopupMenuItem(
                    value: MyListMenu.item2,
                    child: Text(
                      'Delete',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
                const PopupMenuItem(
                    value: MyListMenu.item3,
                    child: Text(
                      'Info',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              ],
            ),
            onTap: () {
//                   Navigator.of(context).push(MaterialPageRoute(builder: (ctx2){
// return OpenPlaylistScreen(playListDeatails: playlistTitle);
//      }));
            },
          ),
        )),
  );
}

enum MyListMenu {
  item1,
  item2,
  item3,
}

//---------------Playlist screen End--------------------------------

