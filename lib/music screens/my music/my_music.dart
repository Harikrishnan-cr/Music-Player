import 'package:flutter/material.dart';
import 'package:music_player/functions/music_functions.dart';
import 'package:music_player/functions/music_list.dart';
import 'package:music_player/second%20screens/play%20music/play_music_screen.dart';

class MyMusicScreen extends StatefulWidget {
  const MyMusicScreen({Key? key}) : super(key: key);

  @override
  State<MyMusicScreen> createState() => _MyMusicScreenState();
}

class _MyMusicScreenState extends State<MyMusicScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ListView.builder(
          controller: ScrollController(),
          itemBuilder: ((context, index) {
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  musicList[index].metas.image!.path,
                  fit: BoxFit.cover,
                  height: 172.03,
                  width: 60,
                ),
              ),
              title: Text(
                musicList[index].metas.title.toString(),
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    musicList[index].metas.artist.toString(),
                    style: const TextStyle(
                        color: Color.fromARGB(135, 255, 255, 255),
                        fontSize: 14),
                  ),
                  // const SizedBox(width: 10,),
                  Text(
                    '4:${index + 10}',
                    style: const TextStyle(
                        color: Color.fromARGB(135, 255, 255, 255),
                        fontSize: 14),
                  )
                ],
              ),
              trailing: PopupMenuButton(
                position: PopupMenuPosition.under,
                elevation: 0,
                onSelected: (value) {
                  if (value == MyListMenu.item1) {
                  } else if (value == MyListMenu.item2) {
                    // addToPlayList(ctx: context);

                  } else if (value == MyListMenu.item3) {}

//         else if (value==MyListMenu.item4){
// //           Navigator.of(context).push(MaterialPageRoute(builder: (ctx1){
// // return PlayMusicScreen(musicImages: musicImage,songName: titleText,artistName: subTitleText,);
// //      }));
//         }
                },
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 20,
                ),
                color: const Color.fromARGB(255, 118, 65, 153),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                      value: MyListMenu.item1,
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 17),
                      child: Text('Add To Liked')),
                  const PopupMenuItem(
                      value: MyListMenu.item2,
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 17),
                      child: Text('Add To Playlist')),
                  const PopupMenuItem(
                      value: MyListMenu.item3,
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 17),
                      child: Text('Info')),
                ],
              ),
              onTap: () async {
                audioPlayer.playlistPlayAtIndex(index);
                await Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const PlayMusicScreen();
                }));

                miniPlayerVisibility.value = true;

// Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1){
// return TabHomeScreen();
//      }));
              },
            );
          }),
          itemCount: musicList.length,
          shrinkWrap: true,
        ),
      ]),
    );
  }
}

enum MyListMenu {
  item1,
  item2,
  item3,
}




// ListTile(
//                 onTap: () {
//                   // .playlistPlayAtIndex(index);
//                   // miniPlayerVisibility.value = true;
//                 },
//                 isThreeLine: true,
//                 leading: ClipRRect(
//       borderRadius: BorderRadius.circular(14),
//       child: Image.asset('assets/audio/lalsing.png',
//       fit: BoxFit.fitWidth,
//      height: 172.03,
//       width: 60,
//       ),
      
//     ),
//                 title: Text(musicList[index].metas.title.toString(),),
//                 subtitle: Text('name $index'),
//                 trailing: IconButton(
//                   icon: Icon(Icons.more_horiz),
//                   onPressed: () {
//                     // showModalSheetHome(context);
//                   },
//                 ));



