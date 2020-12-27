import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  Container _getContainer(double width, double height, Color color) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.purpleAccent,
          width: deviceSize.width,
          height: deviceSize.height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              _getContainer(300, 300, Colors.red),
              Positioned(
                child: _getContainer(50, 50, Colors.yellow),
                bottom: 10,
                right: 50,
              ),
              Positioned(
                child: _getContainer(30, 30, Colors.green),
                top: 20,
                left: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
