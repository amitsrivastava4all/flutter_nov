void main() {
  // List<Function> fnList = calc();
  Map<String, Function> map = calc();
  int result = map['addition'](100);
  //Function add = fnList[0];
  //int result = fnList[0](1000);
  //fnList[1](1000);
  //int result = add(1000);
  print("Result is $result");
  // Function add = () {
  //   print("I am Add");
  // };
}

//List<Function> calc() {
Map<String, Function> calc() {
  int x = 100;
  Function add = (int y) {
    return y + x;
  };
  var sub = (int z) {
    return x - z;
  };
  return {"addition": add, "subtract": sub};
}
