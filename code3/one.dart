void main() {
  List<int> list = [10, 20, 30, 40, 50];
  List<int> secondList = list.map((int element) => element * element).toList();
  print("Second List is $secondList");
}
