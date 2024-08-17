// import 'dart:async';
// import 'dart:js_util';
// import 'package:chattingapp/Screens/create_account.dart';
// import 'package:chattingapp/Screens/register.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// class AuthServices with ChangeNotifier {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   User? get currentUser => _auth.currentUser;

//   bool get isSignedIn => currentUser != null;

//   Future<void> signIn(String email, String password) async {
//     await _auth.signInWithEmailAndPassword(email: email, password: password);
//     notifyListeners();
//   }

//   Future<void> CreateAccount(
//       String email, String password, String name, String imageUrl) async {
//     UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//         email: email, password: password);
//     await _firestore.collection('users').doc(userCredential.user!.uid).set({
//       'uid': userCredential.user!.uid,
//       'name': name,
//       'email': email,
//       'imageUrl': imageUrl,
//     });
//     notifyListeners();
//   }

//   Future<void> SignOut() async {
//     await _auth.signOut();
//     notifyListeners();
//   }
// }
