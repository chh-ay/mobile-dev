import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  var result = 0.0;
  var avg = 0.0;
  var resultPF = "";
  var grade = "";

  TextEditingController flutterController = TextEditingController();
  TextEditingController javaController = TextEditingController();
  TextEditingController databaseController = TextEditingController();

  // ignore: non_constant_identifier_names
  void login_process() {
    var flutter = double.parse(flutterController.text.trim());
    var java = double.parse(javaController.text.trim());
    var database = double.parse(databaseController.text.trim());

    setState(() {
      result = flutter + java + database;
      avg = result / 3;

      if (avg < 50) {
        resultPF = "Failed";
      } else {
        resultPF = "Passed";
      }

      if (avg < 50) {
        grade = "F";
      } else if (avg >= 50 && avg < 60) {
        grade = "E";
      } else if (avg >= 60 && avg < 70) {
        grade = "D";
      } else if (avg >= 70 && avg < 80) {
        grade = "C";
      } else if (avg >= 80 && avg < 90) {
        grade = "B";
      } else if (avg >= 90) {
        grade = "A";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result Calculation"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: const Text(
                "Input your scores",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: flutterController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.account_box_sharp),
                    labelText: "Flutter Score"),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: javaController,
                // obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.key),
                    labelText: "Java Score"),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: databaseController,
                // obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.account_balance_wallet),
                    labelText: "Database Score"),
              ),
            ),
            Container(
              height: 75,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: ElevatedButton.icon(
                onPressed: login_process,
                icon: const Icon(Icons.arrow_forward_ios_sharp),
                label: const Text("Addition", style: TextStyle(fontSize: 20)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: const Text(
                "Result :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "Total : ${result}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "Average : ${avg.toStringAsFixed(2)}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "Result : ${resultPF}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "Grade : ${grade}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
