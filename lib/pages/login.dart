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
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icon(),
          _inputField("Username", usernameController),
          _inputField("Password", passwordController),
        ],
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

  Widget _inputField(String hintText, TextEditingController controller) {

    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.black)
    );

    return TextField();
  }
}
