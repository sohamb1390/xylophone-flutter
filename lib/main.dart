import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:tuple/tuple.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final audioPlayer = AudioCache();

  List<Widget> getWidgets() {
    final children = <Widget>[];
    final buttonDetailsDict = {
      'X': Tuple2<Color, int>(Colors.purple.shade700, 1),
      'Y': Tuple2<Color, int>(Colors.pink.shade700, 2),
      'L': Tuple2<Color, int>(Colors.blue.shade700, 3),
      'O': Tuple2<Color, int>(Colors.orange.shade700, 4),
      'P': Tuple2<Color, int>(Colors.indigo.shade700, 5),
      'H': Tuple2<Color, int>(Colors.cyan.shade700, 6),
      'N': Tuple2<Color, int>(Colors.teal.shade700, 7)
    };

    for (var key in buttonDetailsDict.keys) {
      var tupple = buttonDetailsDict[key];
      var color = tupple.item1;
      var tag = tupple.item2;
      var fileName = 'note$tag.wav';
      children.add(
        Expanded(
          child: getButton(
            tag: tag,
            fileName: fileName,
            color: color,
            text: key,
          ),
        ),
      );
    }
    return children;
  }

  FlatButton getButton({int tag, String fileName, Color color, String text}) {
    return FlatButton(
      onPressed: () {
        audioPlayer.play(fileName);
      },
      color: color,
      textTheme: ButtonTextTheme.primary,
      child: Text(
        '$text',
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
      ),
    );
  }

  AppBar getAppBar() => AppBar(
        title: Text('Xylophone'),
        backgroundColor: Colors.red,
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: getAppBar(),
        body: SafeArea(
          bottom: false,
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: getWidgets(),
          ),
        ),
      ),
    );
  }
}
