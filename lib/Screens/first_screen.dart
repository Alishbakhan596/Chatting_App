import 'package:chattingapp/Screens/second_screen.dart';
import 'package:chattingapp/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

class ScreenFirst extends StatelessWidget {
  const ScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 28),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/preview 1.png",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Track Your Comfort\n        Food here",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(3),
              child: Text(
                "Have You Can find a chef or dish for every\n                  taste and color.Enjoy!",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 35),
            Container(
              height: 50,
              width: 200,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
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
