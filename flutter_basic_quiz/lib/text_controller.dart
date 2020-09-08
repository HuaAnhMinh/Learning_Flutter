import 'package:flutter/material.dart';

class TextController extends StatelessWidget {
  final Function controller;

  TextController(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Change text'),
        onPressed: controller,
      ),
    );
  }
}
