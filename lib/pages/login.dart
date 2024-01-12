import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
            Colors.yellow,
            Colors.yellowAccent
            ]
        ),),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true, // Set this property to true
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _icon(),
              const SizedBox(height: 30),
              _inputField("Username", usernameController),
              const SizedBox(height: 10),
              _inputField("Password", passwordController, isPassword: true),
              const SizedBox(height: 30),
              _loginBtn(),
              _toRegisterPageText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _icon() {
    return
      Container(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image(
              width: double.infinity,
              height: 300,
              image: AssetImage("images/logo.png",)),
                
                Text("Learn 한국어", style: TextStyle(
                  fontSize: 32.0, fontWeight: FontWeight.bold
                ),)
            ],
          ),

      );
  }

  Widget _loginBtn() {
    return ElevatedButton(
        onPressed: () {},
        child: const SizedBox(
          width: double.infinity,
          child: Text(
            "Sign In",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
      primary: Color.fromRGBO(0, 0, 0, 1),
      onPrimary: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 16),
    ),
    );
  }

  Widget _toRegisterPageText() {
    return TextButton(
      onPressed: () {},
      child: Text(
          "Don't you have an account?",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),

    );
  }

  Widget _inputField(String hintText, TextEditingController controller, {isPassword = false}) {

    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.black)
    );

    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }
}
