import 'dart:async';

app(Function fn, int val) {
  Future.delayed(Duration(seconds: 3), () {
    fn(val);
  });
}

network(int r) {
  print("Network Data $r");
}

file(int r) {
  print("File Data $r");
}

db(int r) {
  print("DB Data $r");
}

void main() {
  app(network, 100);
  print("Network Call Started....");
  app(file, 200);
  print("File Call Started....");
  app(db, 300);
  print("DB Call Started....");
}
