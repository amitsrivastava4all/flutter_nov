int add(int x, int y) {
  return x + y;
}

addition(x, y) {
  return x + y;
}

calc(Function fn) {
  int result = fn(100, 200);
  print("Result in Calc $result");
}

void main() {
  int result = add(10, 20);
  print("Result is $result");
  double ee = addition(10.20, 90);
  print(ee);

  //Anonymous Function
  var d = () {
    return "I am a Function";
  };
  calc(addition);
  Function f = () {
    return "I am another Function";
  };
  print(d.runtimeType);
  print(d());
  print(f());
}
