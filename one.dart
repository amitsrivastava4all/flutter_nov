//import 'dart:core';

void main() {
  bool f3 = true;
  var f1;
  print(f1.runtimeType);
  f1 = 1000;
  print(f1.runtimeType);
  f1 = "Amit";
  print(f1.runtimeType);
  var f2 = 1000.20;
  print(f2.runtimeType);
  //f2 = true;
  double d1 = 102.00;
  dynamic dd = 100;
  dd = true;
  int a = 100;
  var b = 200;
  //b = "Hello";
  var c;
  c = 1000;
  c = "Amit";
  int d;
  print(c);
  print(d);
  print(c.runtimeType);
  print(d.runtimeType);
  print(a.runtimeType);
  print(b.runtimeType);
  print("Hello Dart");
}
