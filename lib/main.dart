import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
class XylophoneApp extends StatelessWidget {
  void PlaySound ( int audioNumber){
    final player = AudioCache();
    player.play('note$audioNumber.wav');
  }
  makeButton ({ colour, int soundNumber}){
       return Expanded(
      child: FlatButton(
        color: colour,
        onPressed: (){
          PlaySound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              makeButton(colour:Colors.orange,soundNumber:1),
              makeButton(colour:Colors.purple,soundNumber:2),
              makeButton(colour:Colors.green,soundNumber:3),
              makeButton(colour:Colors.pink,soundNumber:4),
              makeButton(colour:Colors.red,soundNumber:5),
              makeButton(colour:Colors.blue,soundNumber:6),
              makeButton(colour:Colors.yellow,soundNumber:7)
            ],
          ),
        ),
      ),
    );
  }
}
