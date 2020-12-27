import 'package:flutter/material.dart';

class FlipKartDesign extends StatefulWidget {
  @override
  _FlipKartDesignState createState() => _FlipKartDesignState();
}

class _FlipKartDesignState extends State<FlipKartDesign> {
  _createCol(int flex) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Image.network(
              'https://cdn.iconscout.com/icon/free/png-256/special-offer-1784888-1521714.png',
              width: 100,
              height: 100,
            ),
            Text(
              'Top offers',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  Row _createRow() {
    return Row(
      children: [
        _createCol(1),
        _createCol(1),
        _createCol(1),
        _createCol(1),
        _createCol(1)
      ],
    );
  }

  Wrap _alternateOption() {
    return Wrap(
      children: [
        _createCol(1),
        _createCol(1),
        _createCol(1),
        _createCol(1),
        _createCol(1),
        _createCol(1),
        _createCol(1),
        _createCol(1),
        _createCol(1),
        _createCol(1)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _alternateOption(),
        // child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [_alternateOption()]),
        // child: Column(
        //   children: [_createRow(), _createRow()],
        // ),
      ),
    );
  }
}
