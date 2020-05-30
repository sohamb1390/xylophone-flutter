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

  Widget widget(int tag, String text, Color color) {
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
                child: widget(1, 'X', Colors.purple.shade700),
              ),
              Expanded(
                child: widget(2, 'Y', Colors.pink.shade700),
              ),
              Expanded(
                child: widget(3, 'L', Colors.blue.shade700),
              ),
              Expanded(
                child: widget(4, 'O', Colors.orange.shade700),
              ),
              Expanded(
                child: widget(5, 'P', Colors.indigo.shade700),
              ),
              Expanded(
                child: widget(6, 'H', Colors.cyan.shade700),
              ),
              Expanded(
                child: widget(7, 'N', Colors.teal.shade700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
