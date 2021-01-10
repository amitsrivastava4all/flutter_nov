import 'package:flutter/material.dart';
import 'package:musicapp_wend/utils/constants.dart';
import 'package:musicapp_wend/widgets/custombutton.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  loginWithGmail() {}

  loginWithFB() {}
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(loginWithGmail, Constants.LOGIN_GMAIL),
                CustomButton(loginWithFB, Constants.LOGIN_GMAIL)
              ],
            ),
            Positioned(
              child: Image.network(Constants.LEFT_BORDER_IMAGE),
              top: 0,
              left: 0,
              height: size.height / 3,
              width: size.width / 2,
            ),
            Positioned(
                child: Image.network(Constants.RIGHT_BORDER_IMAGE),
                bottom: 0,
                height: size.height / 3,
                width: size.width / 2,
                right: 0)
          ],
        ),
      ),
    );
  }
}
