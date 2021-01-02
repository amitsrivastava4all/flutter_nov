import 'dart:io';

import 'dart:typed_data';

void main() {
  String path = "/Users/amit/Desktop/MicroServices-tele.pdf";
  File file = File(path);
  print("Before Read ");
  Future<Uint8List> future = file.readAsBytes();
  future
      .then((val) => print("Value is $val"))
      .catchError((err) => print("Error is $err"));
  // Uint8List c = file.readAsBytesSync();
  print("After Read ");
  for (int i = 1; i <= 10; i++) {
    print("I am Doing something else");
  }
  //print("File Content is $c");
}
