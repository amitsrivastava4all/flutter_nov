import 'dart:convert' as json;

void main() {
  String t = "Hello";
  t.toUpperCase().substring(1).startsWith('e');
  List<int> l2 = [10, 20];
  l2..add(100)..add(200)..add(300)..add(500);
  print("L2 is $l2");
  // l2.add(100);
  // l2.add(300);
  // l2.add(400);
  Map<String, dynamic> map = json.jsonDecode('{"a":100,"b":200}');
  List<String> l = [null, null, null];
  print(l);
  String name;
  print("Your Name is ${name ?? 'Ram'}");
  String y = name ?? 'ABCD';
  String z = 10 > 2 ? 'Yes' : 'No';
  print(y);
  double q = 10 / 2;
  print(q);
  //int q1 = (10 / 2).toInt();
  int q1 = 10 ~/ 2;
  print(q1);
  String f = "Hello";
  var f1 = "Hello";
  print(f1.runtimeType);
  print(f1 is String);
}
