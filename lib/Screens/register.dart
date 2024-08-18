import 'package:chattingapp/Chat/Chat_Screen.dart';
import 'package:chattingapp/Screens/signUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObecure = true;
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return _page();
  }

  Widget _page() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _inputField("Email", EmailController),
          const SizedBox(height: 20),
          _Field("Password", passwordController, isPassword: true),
          const SizedBox(height: 0),
          _btn(),
          const SizedBox(height: 20),
          _loginBtn(),
          const SizedBox(height: 10),
          _logo(),
        ],
      ),
    );
  }

  Widget _inputField(
    String hintext,
    TextEditingController controller,
  ) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.black));

    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintext,
        hintStyle: const TextStyle(color: Colors.black),
        enabledBorder: border,
        focusedBorder: border,
        prefixIcon: (Icon(
          Icons.person,
        )),
      ),
    );
  }

  Widget _Field(String hintext, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.black));

    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      obscureText: _isObecure,
      decoration: InputDecoration(
          hintText: hintext,
          hintStyle: const TextStyle(color: Colors.black),
          enabledBorder: border,
          focusedBorder: border,
          prefixIcon: (Icon(
            Icons.lock,
          )),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isObecure = !_isObecure;
              });
            },
            icon: Icon(
              _isObecure ? Icons.visibility : Icons.visibility_off,
            ),
          )),
    );
  }

  Widget _btn() {
    return Container(
      alignment: Alignment.centerRight,
      child: Text(
        "Forget Password?",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _loginBtn() {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            spreadRadius: 5.0,
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          debugPrint("Email:" + EmailController.text);
          debugPrint("Password:" + passwordController.text);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatScreen()));
        },
        child: Center(
          child: Text(
            "Log In",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return Column(
      children: [
        Container(
          child: Center(
            child: Column(
              children: [
                Text(
                  "Or",
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 15),
                ),
                Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 38,
                      ),
                      Image.asset('assets/images/icon.png')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
