class Employee {
  //extends Object {
  int _id;
  String _name;
  double _salary;
  // Employee() {
  //   _id = 1001;
  //   _name = "Ram";
  //   _salary = 9999;
  //   print("I am a Default Cons");
  // }
  Employee.takeTwo(this._id, this._name);
  // Employee.takeTwo(int _id, String _name) {
  //   this._id = _id;
  //   this._name = _name;
  // }
  Employee(this._id, this._name, this._salary);
  /*Employee(int _id, String _name, double _salary) {
    this._id = _id;
    this._name = _name;
    this._salary = _salary;
  }*/
  // void display() {
  //   print("Id is $_id");
  //   print("Name is $_name");
  //   print("Salary is $_salary");
  // }

  @override
  String toString() {
    return "Id is $_id Name is $_name Salary is $_salary";
  }
}
