import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login Page",style: TextStyle(
          // fontSize: 20,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}