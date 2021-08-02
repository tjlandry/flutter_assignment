import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final int currentIndex;
  final List<String> textList;

  DisplayText(this.currentIndex, this.textList);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        textList[currentIndex],
        style: TextStyle(fontSize: 30),
      ),
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(top: 100),
    );
  }
}
