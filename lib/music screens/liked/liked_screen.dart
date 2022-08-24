

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';
import 'package:music_player/functions/music_functions.dart';
import 'package:music_player/functions/music_list.dart';

class LikedScreen extends StatelessWidget {
  const LikedScreen({Key? key}) : super(key: key);

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
      child: Image.asset(musicList[index].metas.image!.path,
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
    subtitle: Text(
      musicList[index].metas.artist.toString(),
      style: const TextStyle(
          color: Color.fromARGB(135, 255, 255, 255), fontSize: 14),
    ),

    trailing: const SizedBox(
      width: 45,
      child: LikeButton(
        size: 35,
        isLiked: true,
        animationDuration: Duration(),
      ),
    ),
    


    onTap: (){
     
 
audioPlayer.playlistPlayAtIndex(index);
   miniPlayerVisibility.value=true;
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