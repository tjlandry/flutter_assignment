import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeText;

  TextControl(this.changeText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => changeText(),
      child: Text('Click me!'),
      style: ElevatedButton.styleFrom(primary: Colors.green),
    );
  }
}
