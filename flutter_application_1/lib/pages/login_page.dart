import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
class LoginPage extends StatefulWidget {
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ="";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(255, 255, 255, 1),
      child : SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/undraw_secure_login_pdn4.png",fit: BoxFit.cover ,
            ),
            SizedBox(
              height: 20,
              
            ),
             Text("Welcome $name", 
            style: TextStyle(
              fontSize: 28,
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
                  onChanged: (value){
                    name = value;
                    setState(() {
                      
                    });
                  },

              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
              height: 40,
              
            ),

            InkWell(

              onTap: () async{
                setState(() {
                  changeButton = true;
                }); 
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeButton?50 : 150,
                height: 50,
                
                alignment: Alignment.center,
                child: changeButton?Icon(Icons.done, color: Colors.white): Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),
                ),
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  //shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(
                    changeButton?50:8
                  ),
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: (){
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   }, 
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(minimumSize: Size(150, 40) ),
                
      
            //   )
      
                ],
              ),
            )
          ],
          ),
      )
    );
  }
}