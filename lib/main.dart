import 'dart:async';

import 'package:chattingapp/Chat/Chat_Screen.dart';
import 'package:chattingapp/Screens/SignIn.dart';
import 'package:chattingapp/Screens/auth_provider.dart';
import 'package:chattingapp/Screens/create_account.dart';
import 'package:chattingapp/Screens/sign.dart';
import 'package:chattingapp/Screens/splash_screen.dart';
import 'package:chattingapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

    
//      MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => AuthServices()),
//         ChangeNotifierProvider(create: (_) => ChatScreen()),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: AuthenticationWrapper(),
//       ),
//     );
//   }
// }

// class AuthenticationWrapper extends StatelessWidget {
//   const AuthenticationWrapper({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<AuthServices>(builder: (context, AuthServices, child) {
//       if (AuthServices.isSignedIn) {
//         return SplashScreen();
//       } else {
//         return SignUp();
//       }
//     });
//   }
// }

//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen(),
//     );
//   }
// }
