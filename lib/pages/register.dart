import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController usernameController = TextEditingController();
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
                height: 100,
                image: AssetImage("images/logo.png",)),

            Text("Learn 한국어", style: TextStyle(
                fontSize: 22.0, fontWeight: FontWeight.bold
            ),),
            Text("Register Here", style: TextStyle(
                fontSize: 26.0, fontWeight: FontWeight.bold
            ),),
          ],
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



