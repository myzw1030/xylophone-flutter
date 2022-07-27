import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  child: Container(
                    color: Colors.red,
                  ),
                  onTap: (() {
                    playSound(1);
                  }),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    color: Colors.amber.shade800,
                  ),
                  onTap: (() {
                    playSound(2);
                  }),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    color: Colors.yellow.shade400,
                  ),
                  onTap: (() {
                    playSound(3);
                  }),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    color: Colors.green.shade400,
                  ),
                  onTap: (() {
                    playSound(4);
                  }),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    color: Colors.green.shade800,
                  ),
                  onTap: (() {
                    playSound(5);
                  }),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    color: Colors.blue.shade600,
                  ),
                  onTap: (() {
                    playSound(6);
                  }),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    color: Colors.purple.shade800,
                  ),
                  onTap: (() {
                    playSound(7);
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
