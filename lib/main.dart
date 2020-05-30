import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final audioPlayer = AudioCache();

  FlatButton getButton(int soundNumber, Color buttonColor, String name) {
    return FlatButton(
      onPressed: () {
        audioPlayer.play('note$soundNumber.wav');
      },
      color: buttonColor,
      textTheme: ButtonTextTheme.primary,
      child: Text(
        '$name',
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
      ),
    );
  }

  Widget widget({int tag, String text, Color color}) {
    Widget w = SizedBox(
      child: getButton(tag, color, text),
      height: 50.0,
      width: double.infinity,
    );
    return w;
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
                child: widget(tag: 1, text: 'X', color: Colors.purple.shade700),
              ),
              Expanded(
                child: widget(tag: 2, text: 'Y', color: Colors.pink.shade700),
              ),
              Expanded(
                child: widget(tag: 3, text: 'L', color: Colors.blue.shade700),
              ),
              Expanded(
                child: widget(tag: 4, text: 'O', color: Colors.orange.shade700),
              ),
              Expanded(
                child: widget(tag: 5, text: 'P', color: Colors.indigo.shade700),
              ),
              Expanded(
                child: widget(tag: 6, text: 'H', color: Colors.cyan.shade700),
              ),
              Expanded(
                child: widget(tag: 7, text: 'N', color: Colors.teal.shade700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
