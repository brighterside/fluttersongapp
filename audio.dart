//import 'package:flutter/material.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
//import 'package:flutter/material.dart';
//import 'package:assets_audio_player_web/assets_audio_player_web.dart';
//import 'package:proj2/main.dart';

//import 'main.dart';
///////////////////////

/////////////////////////////////////
playthesong(songName) {
  AudioCache player = AudioCache();
  // final player1 = AudioCache();
  player.loadAll(['dekhte_dekhte.mp3', 'tera_hua.mp3']);
  player.play('$songName');
  //var paused = AudioPlayerState.PAUSED;

  //RaisedButton(
  // onPressed: () {
  // var paused = AudioPlayerState.PAUSED;
  //  paused;
  //},
  //child: Text("data"),
  //);
  //AudioPlayer player = await cache.loop('${songName}');
  // ...
  //player.pause();
  /// player.stop();
  // player.resume();

  //player.play('i_am_the_one.mp3');
}

play1() {
  AudioPlayer audioPlayer = AudioPlayer();
  // AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  AudioPlayer.logEnabled = true;
  print("1");

  play1() async {
    int result = await audioPlayer.play(
        "https://codingwithjoe.com/wp-content/uploads/2018/03/applause.mp3");
    //int result = await audioPlayer.resume();
    if (result == 1) {
      print("success");
    }
  }
}
