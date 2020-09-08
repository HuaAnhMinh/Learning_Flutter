import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String currentText;

  MyText(this.currentText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.currentText,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
