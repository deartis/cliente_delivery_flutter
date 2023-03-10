import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage("lib/assets/img/logo.png")),
            const Text(
              'JD REFEIÇÕES',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            /*const Icon(
              Icons.person,
              color: Color(0xFFFFFFFF),
              size: 100.0,
            ),*/
            const SizedBox(height: 100),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.email,
                  color: Color(0xFFFFFFFF),
                ),
                filled: true,
                fillColor: const Color.fromRGBO(255, 255, 255, 0.3),
                label: const Text('Email'),
                labelStyle: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 20,
                ),
                hintText: 'exempl@exemplo.com',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFFFAF00)),
                ),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              obscureText: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.key,
                  color: Color(0xFFFFFFFF),
                ),
                filled: true,
                fillColor: const Color.fromRGBO(255, 255, 255, 0.3),
                label: const Text('Senha'),
                labelStyle: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 20,
                ),
                hintText: '****',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFFFAF00)),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFAF00),
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                'Entrar',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
                onPressed: () {},
                child: const Text('Cadastrar-se',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ))),
            TextButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.g_mobiledata_outlined,
                      color: Colors.blueAccent,
                      size: 60,
                    ),
                    Text(
                      "Entrar com sua conta Google",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
