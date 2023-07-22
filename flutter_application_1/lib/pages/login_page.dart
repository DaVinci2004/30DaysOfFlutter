import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async{
    if (_formkey.currentState!.validate()){

    
     setState(() {
      changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Image.asset(
                  "assets/images/hello.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "password cannot be empty";
                          }
                          else if(value.length <6){
                            return "password lengt should be atleat 6";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
          
                      Material(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(
                              
                                changeButton?50:
                                8
                              ),
                        child: InkWell(
                          splashColor: Colors.indigo,
                          
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton?50:150,
                            height: 50,
          
                            alignment: Alignment.center,
                            child: changeButton
                                 ? Icon(Icons.done, color: Colors.white)
                                 :Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
