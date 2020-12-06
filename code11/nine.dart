class A {
  int x;
  A(int x) {
    // x = 100;
    this.x = x;
  }
}

class B extends A {
  int y;
  B(int y) : super(1100) {
    //y = 200;
    this.y = super.x + 1111;
  }
  void sum() {
    int z = x + y;
    print("Z is $z");
  }
}

void main() {
  B b = B(100);
  b.sum();
}
