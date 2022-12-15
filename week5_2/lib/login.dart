//1
import 'package:flutter/material.dart';

//2
void main() {
  runApp(const MaterialApp(
    home: Login(),
  ));
}

//3
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

//4
class _LoginState extends State<Login> {
  //5
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Title bar of the app
      appBar: AppBar(
        title: const Text("Login"),
      ),
      //Body section of the app
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Login!!"),
          ],
        ),
      ),
    );
  }
}
