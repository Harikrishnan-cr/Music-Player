import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:music_player/functions/music_functions.dart';
import 'package:music_player/other%20screens/options/create_playlist.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  //-----------------Playlist Screen Fuction start 366 to 438-------------------

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenHomeState();
}

class _PlaylistScreenHomeState extends State<PlaylistScreen> {
  bool isFloatVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            setState(() {
              if (notification.direction == ScrollDirection.forward) {
                isFloatVisible = false;
// log('forward scrooling');
              } else if (notification.direction == ScrollDirection.reverse) {
                isFloatVisible = true;
// log('backward scrooling');
              }
            });

            return isFloatVisible;
          },
          child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Add New Playlist',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    IconButton(
                        onPressed: () {
                          createPlaylistAlert(ctx: context);
                        },
                        icon: const Icon(
                          Icons.playlist_add_rounded,
                          color: Colors.white,
                          size: 30,
                        ))
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.white,
              ),
              const SizedBox(
                height: 15,
              ),
              playlistNameScreen(
                context: context,
                playlistTitle: 'Playlist One',
              ),
              playlistNameScreen(
                context: context,
                playlistTitle: 'Playlist Two',
              ),
              playlistNameScreen(
                context: context,
                playlistTitle: 'Playlist Three',
              ),
              playlistNameScreen(
                context: context,
                playlistTitle: 'Playlist four',
              ),
              playlistNameScreen(
                context: context,
                playlistTitle: 'Playlist five',
              ),
              playlistNameScreen(
                context: context,
                playlistTitle: 'Playlist six',
              ),
              playlistNameScreen(
                context: context,
                playlistTitle: 'Playlist seven',
              ),
              playlistNameScreen(
                context: context,
                playlistTitle: 'Playlist Two',
              ),
              playlistNameScreen(
                context: context,
                playlistTitle: 'Playlist Two',
              ),
              playlistNameScreen(
                context: context,
                playlistTitle: 'Playlist Two',
              ),
              playlistNameScreen(
                context: context,
                playlistTitle: 'Playlist Two',
              ),
              playlistNameScreen(
                context: context,
                playlistTitle: 'Playlist last play full text',
              ),
            ],
          ),
        ),
        floatingActionButton: isFloatVisible
            ? FloatingActionButton(
                onPressed: () {
                  createPlaylistAlert(ctx: context);
                },
                backgroundColor: const Color.fromARGB(197, 0, 0, 0),
                child: const Icon(
                  Icons.playlist_add,
                  size: 25,
                ),
              )
            : null,
      ),
    );
  }
}
