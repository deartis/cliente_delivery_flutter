import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.person,
          color: Color(0xFFFFFFFF),
          size: 100.0,
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            label: const Text('Email'),
            labelStyle: const TextStyle(
              color: Color(0xFFFFFFFF),
            ),
            hintText: 'exempl@exemplo.com',
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
            ),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          obscureText: true,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            label: const Text('Senha'),
            labelStyle: const TextStyle(
              color: Color(0xFFFFFFFF),
            ),
            hintText: '****',
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(onPressed: (){}, child: const Text('Entrar')),''
      ],
    );
  }
}
