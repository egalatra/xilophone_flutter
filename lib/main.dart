import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int soundNumber) {
    //final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int audioNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(audioNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.amber[50], audioNumber: 1),
              buildKey(color: Colors.amber[100], audioNumber: 2),
              buildKey(color: Colors.amber[200], audioNumber: 3),
              buildKey(color: Colors.amber[300], audioNumber: 4),
              buildKey(color: Colors.amber, audioNumber: 5),
              buildKey(color: Colors.amber[600], audioNumber: 6),
              buildKey(color: Colors.amber[700], audioNumber: 7),
              buildKey(color: Colors.amber[900], audioNumber: 8),
            ],
          ),
        ),
      ),
    );
  }
}
