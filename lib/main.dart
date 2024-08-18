import 'dart:async';

import 'package:chattingapp/Chat/Chat_Screen.dart';
import 'package:chattingapp/Chat/chatPage.dart';
import 'package:chattingapp/Screens/SignIn.dart';
import 'package:chattingapp/Screens/create_account.dart';
import 'package:chattingapp/Screens/signUp.dart';
import 'package:chattingapp/Screens/splash_screen.dart';
import 'package:chattingapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashScreen(),
        "ChatPage": (context) => ChatPage(),
      },
    );
  }
}
