import 'package:chattingapp/Chat/Chat_Screen.dart';
import 'package:chattingapp/Screens/signUp.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  height: 420,
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
                          " Sign Up ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      CreateAccount(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              child: Text(
                "Already have an account",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 5),
            Container(
                child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
              },
              child: Text(
                "Signup",
                style: TextStyle(fontSize: 17, color: Colors.pink.shade900),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
