import 'package:flutter/material.dart';

class FormCadastro extends StatelessWidget {
  const FormCadastro({Key? key}) : super(key: key);

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
                label: const Text('Repita a senha'),
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
                'Cadastrar',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
                onPressed: () {},
                child: const Text('Entrar',
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
                      "Cadastrar com conta Google",
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
