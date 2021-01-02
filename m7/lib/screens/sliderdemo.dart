import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_expressions/math_expressions.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double val = 10;
  String myValue = '';
  @override
  initState() {
    super.initState();
    counter = 0;
  }

  takeInput(String v) {
    myValue = v;
    setState(() {});
  }

  int counter;
  BuildContext bt;
  Container _createButton() {
    return Container(
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        padding: EdgeInsets.all(10),
        color: Colors.red,
        elevation: 5,
        splashColor: Colors.yellowAccent,
        textColor: Colors.white,
        onPressed: () {
          counter++;
          Parser p = Parser();
          Expression exp = p.parse("100+20-3");
          ContextModel cm = ContextModel();
          myValue = exp.evaluate(EvaluationType.REAL, cm).toString();
          setState(() {});
        },
        child: Text(
          'Click Me',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  Padding _createTextBox(Function fn) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextField(
        onChanged: fn,
        //onChanged: takeInput,
        // onChanged: (String str) {
        //   takeInput(str);
        // },
        //obscureText: true,
        // textAlign: TextAlign.center,
        autocorrect: true,
        textDirection: TextDirection.rtl,
        //readOnly: true,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: 'Enter Ur Name',
            helperText: 'Ur Name Here',
            hintText: 'Type Name Here',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: Icon(
              Icons.person,
              size: 30,
              color: Colors.red,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    this.bt = context;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 30, color: Colors.white),
        backgroundColor: Colors.orange,
        onPressed: () {
          counter++;
          setState(() {});
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            _createButton(),
            Text(
              'Count is $counter',
              style: TextStyle(fontSize: 30),
            ),
            FaIcon(
              FontAwesomeIcons.male,
              size: 30,
            ),
            Slider(
                min: 1,
                max: 100,
                value: val,
                onChanged: (data) {
                  val = data;
                  print("Slider Change happens $val");
                  setState(() {});
                }),
            _createTextBox(takeInput),
            Text(
              val.toInt().toString() + " MY VALUE ::: " + myValue,
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
