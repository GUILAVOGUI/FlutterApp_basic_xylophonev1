import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note${soundNumber}.wav');
  }
  Expanded buildKey({color, soundNumber}) {
   return Expanded(
      child: Container(
        color: color,
        child: FlatButton(onPressed: () {
          playSound(soundNumber);
        }, child: Text(''),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  buildKey(color: Colors.white70, soundNumber:1),
                  buildKey(color: Colors.red, soundNumber:2),
                  buildKey(color: Colors.blue, soundNumber:3),
                  buildKey(color: Colors.teal, soundNumber:4),
                  buildKey(color: Colors.white, soundNumber:5),
                  buildKey(color: Colors.orangeAccent, soundNumber:6),
                  buildKey(color: Colors.yellow, soundNumber:7),


                ],
              )
          ),
        ),
      )
    );
  }
}
