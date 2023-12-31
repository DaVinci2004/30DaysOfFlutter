import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child : Column(
        children: [
          Image.asset("assets/images/undraw_secure_login_pdn4.png",fit: BoxFit.cover
          ),
          SizedBox(
            height: 20,
            
          ),
           Text("Welcome", 
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(
            height: 20,
            
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username",
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
              ),
            ),
            SizedBox(
            height: 20,
            
          ),
          ElevatedButton(
            onPressed: (){
              print("Hi")
            }, 
            child: Text("Login"),
            style: TextButton.styleFrom().
              

            )

              ],
            ),
          )
        ],
        )
    );
  }
}