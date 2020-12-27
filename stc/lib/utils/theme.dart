import 'package:flutter/material.dart';

getTheme() {
  return ThemeData(
      backgroundColor: Colors.cyanAccent,
      appBarTheme: AppBarTheme(
          elevation: 5,
          color: Colors.yellowAccent,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black, size: 22)));
}
