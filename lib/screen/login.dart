import 'package:flutter/material.dart';
import '../widgets/form_login.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("lib/assets/img/Login.png"),fit: BoxFit.cover),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: const Center(
                child: Form(
                  child: FormLogin(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
