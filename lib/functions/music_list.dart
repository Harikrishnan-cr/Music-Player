


import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:music_player/functions/music_functions.dart';


List<Audio> musicList = [
Audio('assets/audio/dippam-dappam-kaathuvaakula-rendu-kaadhal-128-kbps-sound.mp3',
metas: Metas(
  title: 'Dippam Dippam',
  artist: 'Anirudh',
  image: const MetasImage.asset('assets/audio/music.jpg')
)
),

Audio('assets/audio/hindustan-meri-jaan-shabaash-mithu-128-kbps-sound.mp3',
metas: Metas(
  title: 'hindustan meri jaan',
  artist: 'shabaash mithu',
  image: const MetasImage.asset('assets/audio/sabash-mithu.png')
)
),
Audio('assets/audio/kahani-laal-singh-chaddha-128-kbps-sound.mp3',
metas: Metas(
  title: 'kahani laal singh',
  artist: 'Amir Khan',
  image: const MetasImage.asset('assets/audio/lalsing.png')
)
),
Audio('assets/audio/Karineela_Kayalukondu_(KuttyWap.com).mp3',
metas: Metas(
  title: 'Karineela Kayalukondu',
  artist: 'Honey bee',
  image: const MetasImage.asset('assets/audio/honey-bee.png')
)
),
Audio('assets/audio/Kannamma_Music_Video_Ben_Human_Tamil_Pop_Songs_Latest_Tamil_Songs.mp3',
metas: Metas(
  title: 'Kannama',
  artist: 'Ben Human',
  image: const MetasImage.asset('assets/audio/kannama.jpg')
)
),
Audio('assets/audio/the-monster-song-extended-version-kgf-chapter-2-tamil-128-kbps-sound.mp3',
metas: Metas(
  title: 'KGF',
  artist: 'Ravi Bassur',
  image: const MetasImage.asset('assets/audio/kgf.png')
)
),Audio('assets/audio/title-track-bhool-bhulaiyaa-2-128-kbps-sound.mp3',
metas: Metas(
  title: 'bhool bhulaiyaa',
  artist: 'Karthik Aryan',
  image: const MetasImage.asset('assets/audio/music.jpg')
)
),
Audio('assets/audio/va-en-thozhi-ben-human-128-kbps-sound.mp3',
metas: Metas(
  title: 'Va en thozhi',
  artist: 'Ben Human',
  image: const MetasImage.asset('assets/audio/va-en-thozhi.png')
)
)


];



void setupPlaylist() async {
  await audioPlayer.open(Playlist(audios: musicList),
      autoStart: false,
      loopMode: LoopMode.playlist,
      showNotification: true,
       notificationSettings: const NotificationSettings(stopEnabled: false)
      );
}



// Audio('assets/audio/Kannamma_Music_Video_Ben_Human_Tamil_Pop_Songs_Latest_Tamil_Songs.mp3',
// metas: Metas(
//   title: 'Kannama',
//   artist: 'Ben Human',
//   image: const MetasImage.asset('assets/audio/kannama.jpg')
// )
// ),