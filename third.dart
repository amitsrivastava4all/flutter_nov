import 'dart:io';

void main() {
  print("Enter the First Number");
  // double.parse
  int firstNumber = int.parse(stdin.readLineSync());
  print("Enter the Second Number");
  var secondNumber = int.parse(stdin.readLineSync());
  int result = firstNumber + secondNumber;
  print("Result is $result");
}
