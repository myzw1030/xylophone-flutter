import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          color: color,
        ),
        onTap: (() {
          playSound(soundNumber);
        }),
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
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.amber.shade800, soundNumber: 2),
              buildKey(color: Colors.yellow.shade400, soundNumber: 3),
              buildKey(color: Colors.green.shade400, soundNumber: 4),
              buildKey(color: Colors.green.shade800, soundNumber: 5),
              buildKey(color: Colors.blue.shade600, soundNumber: 6),
              buildKey(color: Colors.purple.shade800, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
