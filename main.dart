//import 'dart:js' show context;
//import ' dart:html';
//import 'dart:ffi';
//import 'dart:js';

//import 'toast.dart';
//import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
import 'audio.dart';
import 'package:toast/toast.dart';
//import 'package:audioplayers/audio_cache.dart';
//import 'package:audioplayers/audioplayers.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';

main() {
  runApp(Myapp());
}

////////////////////////////////////
songRow(var songImage, var songName, String songDiscription) {
  return Padding(
    padding: EdgeInsets.only(top: 0),
    child: Container(
      height: 50,
      width: double.infinity,
      child: Row(
        //i have make here row so that i can control the size of music's image agr upar wale container me krta to uska effect 'play" button me bhi padta
        children: <Widget>[
          Container(
              height: 50,
              width: 50,
              //color: Colors.red,
              child: Image.asset("assets/$songImage")),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              //remind container has aligment propewrty to align it's child
              alignment: Alignment
                  .centerLeft, //this is been done taaki "songImage"ke center me "songDiscription"will appear
              //
              //i have put this 'container' in ipadding widget to create a padding between 'songImage and 'songDescription'otherwise thery were bilkul chipke to each other
              width: 150,
              height: 150,
              decoration: BoxDecoration(),
              child: Text(
                //i have put this 'text ' inside container so that i can fix width and height taaki all play button will be in one line
                "$songDiscription",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            child: Builder(
              builder: (context) => RaisedButton(
                  color: Colors.amber,
                  child: Text(
                    "Play ",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  onPressed: () {
                    Toast.show(
                      "Playing $songDiscription",
                      context, //in toast when i was trying to print a toast then it gives error about "context"so now this is the way i have solve it using a build as widget and then inside it use this(toast) it will work fine......same thing we can do on whenever error regarding context will appear..as linke in navigation between two screen wale me.
                      duration: Toast.LENGTH_LONG,
                      gravity: Toast.BOTTOM,
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      backgroundRadius: 20,
                    );
                    // mytost1();
                    var songNameVariable = "$songName";

                    playthesong(songNameVariable);
                  }),
            ),
          )
        ],
      ),
    ),
  );
}

////////////////////////////////
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //general use

      debugShowCheckedModeBanner: false,
      home: apphome(),
    );
  }
}

apphome() {
  var scaffold = Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text("Audio  Player"),
      actions: <Widget>[
        IconButton(
            hoverColor: Colors.green,
            icon: Icon(Icons.audiotrack),
            onPressed: null //playthesong("i_am_the_one.mp3"),
            ),
      ],
    ),
    body: Padding(
      padding: EdgeInsets.all(0.0),
      child: Container(
        //this container is only made for having the black bacgroung in the app
        color: Colors.black87,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              //height: double.infinity,
              width: double.infinity,
              // onPressed: buttonPressed(),
              //color: Colors.black87,

              //child:Text("data");
              // child: Container(
              // child: Padding(
              //  padding: EdgeInsets.all(10.0),
              // child: Container(
              //if  you have to do padding in container then make it child of padding widget
              //    width: double.infinity,
              //    height: double.infinity,

              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 10,
                top: 0,
              ),

              //color: Colors.green,
              /*  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: Colors.red),
                  color: Colors.blue[50]),
                */
              child: Column(
                children: <Widget>[
                  FlatButton(
                    //color: Colors.greenAccent,
                    hoverColor: Colors.green,
                    splashColor: Colors.red,
                    child: const Text(
                      "Welcome to  audio player!!!",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.cyan,
                          fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              //  ),
              //   ),
              // ),
            ),
            Padding(
              // this padding->to create distance between "welcome to audio player"heading and song list
              padding: EdgeInsets.only(top: 20),
              child: Builder(
                //this builder is made taaki we can assign height of jo song list wala countainer h to mobile screen but still here it didn't work..pahle to maine height.infinity hi try kiya tha but wo work nahi kiya to maine ye tarika use kiya
                builder: (context) => Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.5,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(
                        25), //pinkAccent is light pink color
                  ),
                  child: ListView(
                    children: [
                      Column(
                        children: <Widget>[
                          Text(
                            "SONG LIST... ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          songRow("iao_image.jpg", "i_am_the_one.mp3",
                              "I am the one-justin bebier"),
                          songRow("pahli_dafa.jpg", "pehli_dafa.mp3",
                              "Pahli Dafa-Atif aslam"),
                          songRow("dekhte_dekhte.jpg", "dekhte_dekhte.mp3",
                              "Dekhte-Dekhte "),
                          songRow("candium.jpg", "candium.mp3",
                              "Candium-English Song"),
                          songRow("tera_hua.jpg", "tera_hua.mp3", "Tera hua"),
                          songRow("baby.jpg", "baby.mp3", "Baby-English"),
                          songRow("hasley.jpg", "Halsey.mp3", "Hasley-English"),
                          songRow("memories.jpg", "Memories.mp3",
                              "Memories-English"),
                          songRow("shakira.jpg", "shakira.mp3", "Shakira"),
                          songRow("hasley.jpg", "drake.mp3", "Drake-English"),
                          songRow("mahendra_butter.jpg", "mahendra_butter.mp3",
                              "Teri Meri Ladai-Punjabi"),
                        ],
                      ),

                      //  ),

                      // ],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ); // Text text = Text("dasata");
  return scaffold; //just because to return we have crerated a variable for scaffold
}
