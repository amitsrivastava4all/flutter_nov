import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Function _fn;
  String _iconImage;
  CustomButton(Function fn, String iconImage) {
    this._fn = fn;
    this._iconImage = iconImage;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        _fn();
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: size.height * 0.10,
        width: size.width * 0.75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(_iconImage),
            SizedBox(
              width: 20,
            ),
            Text(
              'Login',
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red.shade200, Colors.yellowAccent, Colors.white]),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
      ),
    );
  }
}
