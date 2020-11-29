heavyTask() {
  Future.delayed(Duration(seconds: 3), () {
    for (int i = 1; i <= 100000; i++) {
      for (int j = 1; j <= 10000; j++) {}
    }
    print("Heavy Task Done...");
  });
  print("Out of Heavy Task");
}

void run() {
  print("Run Start");
  heavyTask();
  print("Run Ends");
}

void main() {
  run();
  print("Main Ends");
}
