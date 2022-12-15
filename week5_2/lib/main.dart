//1
import 'dart:async';

import 'package:flutter/material.dart';
import 'login.dart';

//2
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

//3
class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

//4
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  //5
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Title bar of the app
      // appBar: AppBar(
      //   title: Text("Register"),
      // ),
      //Body section of the app
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Register"),
          ],
        ),
      ),
    );
  }
}
