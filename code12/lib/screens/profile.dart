import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Positioned _getRow() {
    return Positioned(
      top: 10,
      width: deviceSize.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(Icons.arrow_back_ios_outlined),
          Row(
            children: [
              Icon(Icons.edit),
              Icon(Icons.more_vert),
            ],
          ),
        ],
      ),
    );
  }

  Positioned rightIcons(IconData icon, double right) {
    return Positioned(
      right: right,
      top: 10,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30), child: Icon(icon)),
    );
  }

  Positioned _getName(String name) {
    int fontPix = 7;
    return Positioned(
      bottom: deviceSize.height * 0.02,
      left: deviceSize.width / 2 - (fontPix * name.length),
      child: Text(
        name,
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
      ),
    );
  }

  Size deviceSize;
  @override
  Widget build(BuildContext context) {
    String name = "Bill Gates";
    deviceSize = MediaQuery.of(context).size;
    const String URL =
        "https://www.diethelmtravel.com/wp-content/uploads/2016/04/bill-gates-wealthiest-person.jpg";
    return Scaffold(
      body: SafeArea(
        child: Stack(
          //fit: StackFit.expand,
          children: [
            Image.network(URL),
            _getName(name),
            _getRow()
            // rightIcons(Icons.edit, 50),
            // rightIcons(Icons.more_vert, 10)
          ],
        ),
      ),
    );
  }
}
