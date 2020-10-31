import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playSound(int sound) {
  final player = AudioCache();
  player.play('note$sound.wav');
}

Expanded keyCard({Color color, int key}) {
  return Expanded(
    child: FlatButton(
      child: Text(''),
      color: color,
      onPressed: () {
        playSound(key);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keyCard(color: Colors.red, key: 1),
              keyCard(color: Colors.orange, key: 2),
              keyCard(color: Colors.yellow, key: 3),
              keyCard(color: Colors.green, key: 4),
              keyCard(color: Colors.blue, key: 5),
              keyCard(color: Colors.indigo, key: 6),
              keyCard(color: Colors.purple, key: 7),
            ],
          ),
        ),
      ),
    );
  }
}
