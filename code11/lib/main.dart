import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'My First App',
      home: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Hello Flutter'), FlutterLogo()],
      ))));
}
