import 'package:flutter/material.dart';

import './my_text.dart';
import './text_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _samples = const [
    {
      'text': 'The quick brown fox jumps over the lazy dog',
    },
    {
      'text': 'Almost before we knew it, we had left the ground.',
    },
    {
      'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {
      'text': 'Ut non quam vel nisl vehicula posuere vel vel urna.',
    },
    {
      'text': 'Suspendisse pulvinar massa id ultricies egestas.',
    },
  ];
  var _currentTextPosition = 0;

  void _changeText() {
    setState(() {
      _currentTextPosition = _currentTextPosition == _samples.length - 1
          ? 0
          : _currentTextPosition + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Basic Quiz'),
        ),
        body: Center(
          child: Column(
            children: [
              MyText(_samples[_currentTextPosition]['text']),
              TextController(_changeText),
            ],
          ),
        ),
      ),
    );
  }
}
