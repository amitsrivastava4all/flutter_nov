class MD {
  MD({String title, String home, String debugBanner}) {}
}

enum MainAxisAlignment { START, CENTER, END }

class Column {
  Column({List children, MainAxisAlignment mainAxisAlignment}) {}
}

void main() {
  Column(children: [], mainAxisAlignment: MainAxisAlignment.CENTER);
  // print(add(10, 20));
  // print(add(1));
  // print(add());
  MD(title: 'My Title');
  print(add(y: 10, x: 20));
  print(add(y: 1));
  print(add());
}

// add([int x = 0, int y = 0]) {
//   return x + y;
// }
add({int x = 0, int y = 0}) {
  return x + y;
}
