// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import './textcontrol.dart';
import './text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _textList = const [
    'Initial Text',
    'Second Text',
    'Your momma',
    'Final Text'
  ];
  int _currentIndex = 0;
  void _changeText() {
    if (_currentIndex == 3){_currentIndex = -1;}
    setState(() => _currentIndex += 1);
    print(_currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment'),
        ),
        body: Column(
          children: [
            DisplayText(_currentIndex, _textList),
            TextControl(_changeText),
          ],
        ),
      ),
    );
  }
}
