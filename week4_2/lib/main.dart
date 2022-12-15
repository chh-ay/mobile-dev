import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Username",
                      prefixIcon: Icon(Icons.account_box_sharp)),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.key)),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  print("Login...");
                },
                icon: const Icon(Icons.arrow_forward_ios_sharp),
                label: const Text("Login")
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  print("Register...");
                },
                icon: const Icon(Icons.account_circle_outlined),
                label: const Text("Register"), 
              )
            )
          ],
        ),
      ),
    );
  }
}
