import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tervis/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer audioPlayer = AudioPlayer();
  play() async {
    int result = await audioPlayer.play(
        "https://www.mboxdrive.com/Headspace - Take Series - Day 1 - Part 2.mp3");
    if (result == 1) {
      // success
    }
  }

  play2() async {
    int result = await audioPlayer.play(
        "https://www.mboxdrive.com/2019-04-26_-_Tranquility_-_www.fesliyanstudios.com.mp3");
    if (result == 1) {
      // success
    }
  }

  var isSelected = [false, false];
  bool isAudioPlaying = false;
  String textIn = "Press A Button To\n Start";
  // AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/homePageHeader.png",
                width: double.infinity,
                fit: BoxFit.cover,
                height: 200,
              ),
              Center(
                heightFactor: 3.5,
                child: Text(
                  "\"Some days I am more wolf than woman, and I am still learning how to stop apologizing for my wild.” \n -Nikita Gill",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Text(
            "Hello! Abhishek,\nIt's Wonderful to see you again",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 16, letterSpacing: 1.2),
          ),
          Stack(
            children: [
              Image.asset(
                "assets/images/homePageEllipse.png",
                width: 250,
                height: 250,
              ),
              Container(
                  height: 250,
                  width: 250,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      textIn,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ToggleButtons(
              children: [Text("   Music    "), Text("   Breathe   ")],
              isSelected: isSelected,
              onPressed: (index) {
                // play(audioPlayer);

                setState(() {
                  isSelected[index] = !isSelected[index];
                  isSelected[(index + 1) % 2] = false;
                  if (isSelected[0]) {
                    play2();
                  }
                  if (isSelected[1]) {
                    play();
                  }
                  textIn = decideText(isSelected);
                  if (!isSelected[0] && !isSelected[1]) {
                    audioPlayer.stop();
                  }
                });
              },
              color: kSecondaryBlue,
              selectedColor: Colors.white,
              fillColor: kSecondaryBlue,
              textStyle: TextStyle(fontSize: 16, letterSpacing: 2),
            ),
          ),
        ],
      ),
    );
  }
}

decideText(isSelected) {
  if (!isSelected[0] && !isSelected[1]) {
    return "Press A Button To\n Start";
  }
  if (isSelected[0]) {
    return "Relax";
  }
  if (isSelected[1]) {
    return "Breathe";
  }
}
