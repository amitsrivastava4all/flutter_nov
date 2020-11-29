void main() {
  Function add = (int x, int y) => x + y; // Fat Arrow Function
  List<int> list = [10, 20, 30, 90, 20, 10, 100, 5, 7];
  // loop
  // for (int i = 0; i < list.length; i++) {
  //   print(list[i]);
  // }
  // Iterator<int> i = list.iterator;
  // while (i.moveNext()) {
  //   print(i.current);
  // }
  // for (int i in list) {
  //   print(i);
  // }

  print(list.where((element) => element == 10).toList().length);
  int e = list.firstWhere((element) => element > 30);
  print(e);
  int index = list.indexWhere((element) => element > 30);
  //List<String> prices = list.map((e) => "Rs $e").toList();
  list.map((int e) => "Rs $e").forEach((element) => print(element));
  //print(prices);
  //prices.forEach((element) => print(prices));
  print(list.any((element) => element > 20));
  print(list.every((element) => element >= 10));
  list.sort((first, second) => second.compareTo(first));
  int result = list.fold(0, (acc, currentValue) => acc + currentValue);
  print(result);
  result = list
      .where((element) => element > 10)
      .fold(0, (acc, element) => acc + element);
  print("Sum is $result");
  print(list);
  //Iterable<int> j = list.where((int currentElement) => currentElement == 10);
  //List<int> l2 = j.toList();
  //print("l2 is $l2");
  //list.where(chec);
}

// bool check(currentElement) {
//   print("*******CHECK CALL $currentElement");
//   return currentElement == 10;
// }
