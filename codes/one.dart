import 'dart:io';

void main() {
  userInput();
}

userInput() {
  String x;
  print("Your Name is ${x ?? 'Ram'}");
  print("Enter any Number");
  int n1 = int.parse(stdin.readLineSync() ?? '0');
  print("Enter Any Number");
  int n2 = int.parse(stdin.readLineSync() ?? '0');
  int sum = n1 + n2;
  print("Sum of two number is $sum");
}
