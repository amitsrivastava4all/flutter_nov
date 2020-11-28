void main() {
  List<int> list = [10, 10, 20, 90, 100];
  print(list[0]);
  print(list[1]);
  print(list.length); // Property
  print(list.first);
  print(list.isEmpty);
  print(list.isNotEmpty);
  print(list.last);
  // methods
  list.add(9999);
  list.insert(0, 7777);
  list.addAll([100000, 22222, 4444]);
  //list.clear();
  int index = list.indexOf(100); // -1 not found , >=0 Found
  list.lastIndexOf(100);
  List<int> subList = list.getRange(0, 4);
  list.removeAt(0);
  list.remove(100);
  subList = list.sublist(3);
  int ele = list.elementAt(0);

  print(list);
}
