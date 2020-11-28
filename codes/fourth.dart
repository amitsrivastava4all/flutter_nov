import 'dart:async';

waiter(Function fn) {
  Future.delayed(Duration(seconds: 3), fn);
}

cook1() {
  print("Meal Prepare");
}

cook2() {
  print("Fruit Prepare");
}

cook3() {
  print("Drink Prepare");
}

void main() {
  waiter(cook1);
  print("Cook1 Started....");
  waiter(cook2);
  print("Cook2 Started....");
  waiter(cook3);
  print("Cook3 Started....");
}
