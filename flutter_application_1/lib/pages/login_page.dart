import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return const Material(
      child : Center(
          child: Text("Login Page",style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 25, 35, 225),
            fontWeight: FontWeight.bold,
            ),
          ),
        ),
    );
  }
}