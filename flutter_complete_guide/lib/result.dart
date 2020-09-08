import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var result = 'You did it!';
    if (resultScore <= 15) {
      result = 'You are bad!';
    } else if (resultScore <= 25) {
      result = 'You are good!';
    } else {
      result = 'You are awesome!';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text(
              'Restart Quiz',
            ),
            textColor: Colors.blue,
            onPressed: this.resetHandler,
          )
        ],
      ),
    );
  }
}
