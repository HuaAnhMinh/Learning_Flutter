import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 5,
        },
        {
          'text': 'Green',
          'score': 3,
        },
        {
          'text': 'White',
          'score': 1,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {
          'text': 'Cat',
          'score': 10,
        },
        {
          'text': 'Dog',
          'score': 15,
        },
        {
          'text': 'Bird',
          'score': 3,
        },
        {
          'text': 'Rabbit',
          'score': 3,
        },
        {
          'text': 'Hamster',
          'score': 1,
        },
      ],
    },
    {
      'questionText': 'What is your favorite food',
      'answers': [
        {
          'text': 'Beefsteak',
          'score': 15,
        },
        {
          'text': 'Pudding',
          'score': 10,
        },
        {
          'text': 'Chocolate',
          'score': 20,
        },
        {
          'text': 'Yogurt',
          'score': 8,
        },
        {
          'text': 'Milk',
          'score': 12,
        },
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    print('Answer chosen!');
    print(_totalScore);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
