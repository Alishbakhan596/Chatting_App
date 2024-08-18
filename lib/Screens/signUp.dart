import 'package:chattingapp/Screens/SignIn.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _isObecure = true;
  TextEditingController NameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
          _inputField("Name", NameController),
          const SizedBox(height: 20),
          _Field(
            "Email",
            EmailController,
          ),
          const SizedBox(height: 20),
          _input("Password", passwordController, isPassword: true),
          const SizedBox(height: 20),
          _loginBtn(),
          const SizedBox(height: 0),
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
          prefixIcon: Icon(Icons.person)),
    );
  }

  Widget _Field(
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
          prefixIcon: Icon(Icons.email_rounded)),
    );
  }

  Widget _input(String hintext, TextEditingController controller,
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
          prefixIcon: Icon(Icons.lock),
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
            debugPrint("Name:" + NameController.text);
            debugPrint("Email:" + EmailController.text);
            debugPrint("Password:" + passwordController.text);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignIn()));
          },
          child: Center(
            child: Text(
              "Create Account",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
    );
  }
}
