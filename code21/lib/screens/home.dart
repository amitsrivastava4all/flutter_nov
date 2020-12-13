import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home() {}

  AppBar _getAppBar() {
    return AppBar(
      //elevation: 10,
      //shadowColor: Colors.purpleAccent,
      // leading: Icon(
      //   Icons.home,
      //   //size: 30,
      //   //color: Colors.black,
      // ),
      actions: [
        Icon(
          Icons.notifications,
          //size: 22,
        ),
        Icon(
          Icons.email,
          // size: 22
        )
      ],
      // backgroundColor: Colors.yellowAccent,
      title: Text(
        'First App',
        style: TextStyle(
            fontSize: 22, color: Colors.redAccent, fontWeight: FontWeight.bold),
      ),
    );
  }

  _getContainer() {
    const String imagePath =
        "https://media2.giphy.com/media/VFB3cJJne7b5m/giphy.gif";
    return Container(
      width: size.width,
      height: size.height,

      // width: size.width * 0.80,
      // height: size.height * 0.50,
      transform: Matrix4.rotationZ(3.14 / 4),
      decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            Colors.green,
            Colors.white,
            Colors.redAccent,
            Colors.blue,
            Colors.deepOrange
          ], stops: [
            0.10,
            0.20,
            0.50,
            0.75,
            1.0
          ]),

          // SweepGradient(colors: [
          //   Colors.green,
          //   Colors.white,
          //   Colors.redAccent,
          //   Colors.blue,
          //   Colors.deepOrange
          // ], stops: [
          //   0.10,
          //   0.20,
          //   0.50,
          //   0.75,
          //   1.0
          // ])

          /*
          LinearGradient(colors: [
            Colors.green,
            Colors.white,
            Colors.redAccent,
            Colors.blue
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)
           */
          color: Colors.orange,
          boxShadow: [
            BoxShadow(color: Colors.purpleAccent, blurRadius: 10),
            BoxShadow(color: Colors.green, blurRadius: 5)
          ],
          //shape: BoxShape.circle,
          // image: DecorationImage(
          //     image: NetworkImage(
          //       imagePath,
          //     ),
          //     fit: BoxFit.cover,),
          //borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.red, width: 4)),
      child: Text(
        'Hello Flutter',
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        elevation: 5,
        child: Icon(Icons.email),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
      ),
      // backgroundColor: Colors.tealAccent,
      appBar: _getAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        backgroundColor: Colors.purpleAccent,
        child: Icon(
          Icons.mic,
          size: 30,
        ),
      ),
      body: SafeArea(child: _getContainer()
          /* Container(
          margin: EdgeInsets.only(top: 100, left: 100),
          // padding: EdgeInsets.all(100),
          //padding: EdgeInsets.only(left: 100, top: 200),
          // padding: EdgeInsets.only(top: 300, bottom: 100),
          padding: EdgeInsets.symmetric(horizontal: 100),
          width: size.width,
          height: size.height / 2,
          //width: double.infinity,
          //height: double.infinity,
          child: Text(
            'Hello Flutter',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.orangeAccent,
        ),*/
          // child: Text(
          //   'Hello Flutter',
          //   style: TextStyle(fontSize: 22),
          // ),
          ),
      drawer: SafeArea(
        child: Drawer(
          elevation: 4,
          child: Center(child: Text('My Drawer')),
        ),
      ),
    );
    // return Center(
    //   child: Image.network(
    //       'https://upload.wikimedia.org/wikipedia/commons/5/55/Geely_assembly_line_in_Beilun%2C_Ningbo.JPG'),
    // );
  }
}
