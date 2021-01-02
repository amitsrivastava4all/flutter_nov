import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcDemo extends StatefulWidget {
  @override
  _CalcDemoState createState() => _CalcDemoState();
}

class _CalcDemoState extends State<CalcDemo> {
  _putValue(String val) {
    if (textValue == "0") {
      textValue = val;
    } else {
      textValue += val;
    }
    setState(() {});
  }

  String textValue;

  @override
  initState() {
    super.initState();
    textValue = "0";
  }

  computeVal() {
    String expression = textValue;
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    double result = exp.evaluate(EvaluationType.REAL, cm);
    textValue = result.toString();
    setState(() {});
  }

  Widget _getResult(String val) {
    return Container(
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.orange,
        onPressed: () {
          computeVal();
        },
        child: Text(
          val,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  Widget _getButton(String val) {
    return Container(
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.orange,
        onPressed: () {
          _putValue(val);
        },
        child: Text(
          val,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.tealAccent,
              height: 200,
              width: double.infinity,
              child: Text(
                textValue,
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              children: [_getButton('9'), _getButton('8'), _getButton('7')],
            ),
            Row(
              children: [_getButton('+'), _getButton('-'), _getResult('=')],
            )
          ],
        ),
      ),
    );
  }
}
