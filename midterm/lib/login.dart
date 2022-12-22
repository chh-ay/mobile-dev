//1
import 'dashboard.dart';
import 'package:flutter/material.dart';

//2
void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

//3
class Login extends StatefulWidget {
  _LoginState createState() => _LoginState();
}

//4
class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool emailValid = false;
  bool passValid = false;

  bool validator() {
    bool result = false;

    if (emailController.text.isEmpty) {
      setState(() {
        emailValid = true;
        result = true;
      });
    } else {
      setState(() {
        emailValid = false;
        result = false;
      });
    }
    if (passController.text.isEmpty) {
      setState(() {
        passValid = true;
        result = true;
      });
    } else {
      setState(() {
        passValid = false;
        result = false;
      });
    }
    return result;
  }

  void validation() {
    validator();
  }

  //5
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                obscureText: true,
                decoration: InputDecoration(
                    errorText: emailValid ? "Email is required" : null,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.account_box_sharp),
                    labelText: "Email"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                    errorText: passValid ? "Password is required" : null,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.key),
                    labelText: "Password"),
              ),
            ),
            Container(
              height: 75,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                onPressed: () {
                  if (passController.text.isEmpty ||
                      emailController.text.isEmpty) {
                    validation();
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  }
                },
                icon: Icon(Icons.account_circle_outlined),
                label: Text("Login", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
