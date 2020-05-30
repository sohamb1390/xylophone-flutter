import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final audioPlayer = AudioCache();

  FlatButton getButton({int tag, String text, Color color}) {
    return FlatButton(
      onPressed: () {
        audioPlayer.play('note$tag.wav');
      },
      color: color,
      textTheme: ButtonTextTheme.primary,
      child: Text(
        '$text',
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          bottom: false,
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child:
                    getButton(tag: 1, text: 'X', color: Colors.purple.shade700),
              ),
              Expanded(
                child:
                    getButton(tag: 2, text: 'Y', color: Colors.pink.shade700),
              ),
              Expanded(
                child:
                    getButton(tag: 3, text: 'L', color: Colors.blue.shade700),
              ),
              Expanded(
                child:
                    getButton(tag: 4, text: 'O', color: Colors.orange.shade700),
              ),
              Expanded(
                child:
                    getButton(tag: 5, text: 'P', color: Colors.indigo.shade700),
              ),
              Expanded(
                child:
                    getButton(tag: 6, text: 'H', color: Colors.cyan.shade700),
              ),
              Expanded(
                child:
                    getButton(tag: 7, text: 'N', color: Colors.teal.shade700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
