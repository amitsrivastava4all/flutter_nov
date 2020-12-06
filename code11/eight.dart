import './seven.dart';

void main() {
  int x;

  //Employee ram = new Employee();
  StringBuffer sb = StringBuffer("Hello");
  //print(sb.toString());
  //print(sb);
  //Employee ram = Employee(1001, "Ram", 9999);
  Employee ram = Employee.takeTwo(1001, "Ram");
  // ram.toString()
  ram.salary = 9000;
  print(ram.salary);
  //print(ram.toString());
  //ram.display();
  //print(ram);
  //print(ram is Employee);
  // ram.id = -1001;
  // ram.name = "Ram";
  // ram.salary = -9999;
  // print("Employee is ${ram.id} ${ram.name} ${ram.salary}");
}
