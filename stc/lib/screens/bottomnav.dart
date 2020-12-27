import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  Color mycolor;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mycolor = Colors.redAccent;
  }

  _changeColor() {
    setState(() {
      mycolor = Colors.yellowAccent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            RaisedButton(
              onPressed: () {
                _changeColor();
              },
              child: Text('Button1'),
              color: mycolor,
            )
          ],
        ),
      ),
    );
  }
}
