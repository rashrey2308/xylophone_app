import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildkey({Color color,int n}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(n);
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
              buildkey(color: Colors.red,n: 1),
              buildkey(color: Colors.orange,n: 2),
              buildkey(color: Colors.yellow,n: 3),
              buildkey(color: Colors.green,n: 4),
              buildkey(color: Colors.blue,n: 5),
              buildkey(color: Colors.indigo,n: 6),
              buildkey(color: Colors.purple,n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
