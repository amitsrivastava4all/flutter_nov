import 'package:flutter/material.dart';

class Multi extends StatelessWidget {
  Container _getContainer(Color color, double height, double width) {
    return Container(
      color: color,
      width: width,
      height: height,
    );
  }

  _getText(String msg, double size) {
    return Text(
      msg,
      style: TextStyle(fontSize: size),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.end,
          //mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          //textBaseline: TextBaseline.alphabetic,
          textBaseline: TextBaseline.ideographic,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _getText('你好', 30),
            _getText('Hi', 40),
            _getText('Ok', 22)
            // _getContainer(Colors.redAccent, 100, 100),
            // _getContainer(Colors.blue, 100, 100),
            // _getContainer(Colors.green, 100, 100),
          ],
        ),
      ),
    );
  }
}
