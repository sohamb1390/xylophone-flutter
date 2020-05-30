import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  FlatButton getButton(String fileName, Color buttonColor, String name) {
    return FlatButton(
      onPressed: () {
        final audioPlayer = AudioCache();
        audioPlayer.play('$fileName.wav');
      },
      color: buttonColor,
      textTheme: ButtonTextTheme.primary,
      child: Text(
        '$name',
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          bottom: false,
          top: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  child: getButton('note1', Colors.purple.shade700, 'X'),
                  height: 50.0,
                  width: double.infinity,
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: getButton('note2', Colors.pink.shade700, 'y'),
                  height: 50.0,
                  width: double.infinity,
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: getButton('note3', Colors.blue.shade700, 'l'),
                  height: 50.0,
                  width: double.infinity,
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: getButton('note4', Colors.orange.shade700, 'o'),
                  height: 50.0,
                  width: double.infinity,
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: getButton('note5', Colors.indigo.shade700, 'p'),
                  height: 50.0,
                  width: double.infinity,
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: getButton('note6', Colors.cyan.shade700, 'h'),
                  height: 50.0,
                  width: double.infinity,
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: getButton('note7', Colors.teal.shade700, 'n'),
                  height: 50.0,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
