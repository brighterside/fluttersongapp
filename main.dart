import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
import 'audio.dart';
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
            //alignment: Alignment.topLeft,
            //this will align the "play button"on an specific position,because pahle jab maine padding use ki thi then in NEXUS-5 emulator everything was fine but in redmi there was 20 pixel overflowed that's why i have used aligmnet in place of padding
            /*child: Padding(
              padding: EdgeInsets.only(right: 20),*/
            child: RaisedButton(
                color: Colors.blue,
                child: Text(
                  "Play ",
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                  var songNameVariable = "$songName";
                  playthesong(songNameVariable);
                }),
          )
        ],
      ),
    ),
  );
}

////////////////////////////////
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: apphome(),
    );
  }
}

/*buttonPressed() {
  print("object");
}*/

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
          // onPressed: buttonPressed(),
          color: Colors.black87,

          //child:Text("data");
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(40.0),
              child: Container(
                //if  you have to do padding in container then make it child of padding widget
                width: double.infinity,
                height: double.infinity,

                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 10,
                  top: 30,
                ),

                //color: Colors.green,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: Colors.red),
                    color: Colors.blue[50]),

                child: ListView(
                  //scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.greenAccent,
                          hoverColor: Colors.green,
                          splashColor: Colors.red,
                          child: const Text(
                            "Welcome to  audio player!!!",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black87,
                                fontSize: 20),
                          ),
                          onPressed: () {},
                        ),

                        /*Padding(
                                  //this padding on raised button will create a padding between upper button and this button
                                  padding: EdgeInsets.only(
                                    left: 10,
                                  ),*/
                        // ListView(
                        // scrollDirection: Axis.vertical,
//                    children: <Widget>[
                        Column(
                          children: <Widget>[
                            /* RaisedButton(
                              onPressed: () {},
                              child: Text(
                                "play vedio",
                                style: TextStyle(
                                    color: Colors.red,
                                    //backgroundColor: Colors.red,
                                    fontSize: 20),
                              ),
                              textColor: Color.fromARGB(2, 40, 199, 200),
                            ),
                           */ //this was for playing vedio
                            songRow("iao_image.jpg", "i_am_the_one.mp3",
                                "I am the one-justin bebier"),
                            songRow("pahli_dafa.jpg", "pehli_dafa.mp3",
                                "Pahli Dafa-Atif aslam"),
                            /* Padding(
                                    padding: EdgeInsets.only(top: 20),
                                  ),*/ //inside column's childreen widget section we can do anywher padding?
                            songRow("dekhte_dekhte.jpg", "dekhte_dekhte.mp3",
                                "Dekhte-Dekhte "),
                            songRow("candium.jpg", "candium.mp3",
                                "Candium-English Song"),
                            songRow("tera_hua.jpg", "tera_hua.mp3", "Tera hua"),
                            songRow("baby.jpg", "baby.mp3", "Baby-English"),
                            songRow(
                                "hasley.jpg", "Halsey.mp3", "Hasley-English"),
                            songRow("memories.jpg", "Memories.mp3",
                                "Memories-English"),
                            songRow("shakira.jpg", "shakira.mp3", "Shakira"),
                            songRow("hasley.jpg", "drake.mp3", "Drake-English"),
                            songRow(
                                "mahendra_butter.jpg",
                                "mahendra_butter.mp3",
                                "Teri Meri Ladai-Punjabi"),
                          ],
                        ),
                        // ],
                        //),
                      ],
                      //inside column's childreen widget section we can do anywher padding?
                    ),
                  ],
                ),
                //),
              ),
            ),
          ),
        ),
      )); // Text text = Text("dasata");
  return scaffold; //just because to return we have crerated a variable for scaffold
}
