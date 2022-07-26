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
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                child: Text(''),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.red,
                  ),
                ),
                onPressed: (() {
                  playSound(1);
                }),
              ),
              TextButton(
                child: Text(''),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.amber.shade800,
                  ),
                ),
                onPressed: (() {
                  playSound(2);
                }),
              ),
              TextButton(
                child: Text(''),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.yellow.shade400,
                  ),
                ),
                onPressed: (() {
                  playSound(3);
                }),
              ),
              TextButton(
                child: Text(''),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.green.shade400,
                  ),
                ),
                onPressed: (() {
                  playSound(4);
                }),
              ),
              TextButton(
                child: Text(''),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.green.shade800,
                  ),
                ),
                onPressed: (() {
                  playSound(5);
                }),
              ),
              TextButton(
                child: Text(''),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.lightBlue.shade600,
                  ),
                ),
                onPressed: (() {
                  playSound(6);
                }),
              ),
              TextButton(
                child: Text(''),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.purple.shade800,
                  ),
                ),
                onPressed: (() {
                  playSound(7);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
