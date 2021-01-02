import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwendapp/screens/calcdemo.dart';
import 'package:flutterwendapp/utils/theme.dart';

void main() {
  runApp(MaterialApp(
      //theme: ThemeData.light()
      debugShowCheckedModeBanner: false,
      theme: getTheme(),
      title: 'My First App',
      home: CalcDemo()));
  // home: SliderDemo()));
}
