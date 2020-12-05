enum Days { SUNDAY, MONDAY, TUESDAY }
void main() {
  // String day = "Sunday";

  // //int day = 1;
  // switch (day) {
  //   case "Sunday":
  //     print("Fun Day");
  //     break;
  //   case "Monday":
  //     print("Working Day");
  // }
  Days day = Days.SUNDAY;
  print(day.index);
  switch (day) {
    case Days.SUNDAY:
      print("Fun Day");
      continue second;
    //break;
    case Days.MONDAY:
      print("Working Day");
      break;
    second:
    case Days.TUESDAY:
      print("Working Day2");
  }
}
