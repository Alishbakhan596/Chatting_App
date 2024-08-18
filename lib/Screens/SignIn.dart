import 'package:chattingapp/Chat/Chat_Screen.dart';
import 'package:chattingapp/Screens/signUp.dart';
import 'package:chattingapp/Screens/register.dart';
import 'package:chattingapp/Screens/create_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(224, 233, 30, 98),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Center(child: Image.asset("assets/images/logo (3).png")),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "Deliver Favourite Food",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 440,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10.0,
                            spreadRadius: 5.0),
                      ]),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          " Login ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Register(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              child: Text(
                "Don't have an account",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 5),
            Container(
                child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text(
                "Register",
                style: TextStyle(fontSize: 17, color: Colors.pink.shade900),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
