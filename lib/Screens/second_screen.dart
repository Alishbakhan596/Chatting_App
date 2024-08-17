import 'package:chattingapp/Screens/SignIn.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/ezgif 1.png"),
            ),
            SizedBox(height: 45),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Foodie is Where Your \nComfort Food Resides",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 0),
            Container(
              padding: EdgeInsets.all(0),
              child:
                  Text("Enjoy a fast and smooth delivery at \n your doorstep"),
            ),
            SizedBox(height: 55),
            Container(
              height: 50,
              width: 200,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10.0,
                        spreadRadius: 5.0),
                  ]),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
