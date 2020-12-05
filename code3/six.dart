void main() {
  List<int> l = [10, 20, 30];
  for (int e in l) {
    print(e);
  }
  outer:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == j) {
        //break;
        continue outer;
        //break outer;
      }
      print("I is $i and J is $j");
    }
  }
}
