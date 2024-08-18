import 'dart:async';

import 'package:chattingapp/Screens/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 15),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ScreenFirst())));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(64, 248, 187, 208),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 140,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/logo (1).png",
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Image.asset("assets/images/logo.png"),
            ),
          ],
        ),
      ),
    );
  }
}
