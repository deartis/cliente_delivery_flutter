import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:app_cliente_restaurante/screen/home.dart';
import 'package:app_cliente_restaurante/screen/login.dart';
import 'package:app_cliente_restaurante/screen/cadastro.dart';
import 'package:app_cliente_restaurante/screen/primeiro_pos.dart';
import 'package:app_cliente_restaurante/screen/segundo_pos.dart';
import 'package:flutter/material.dart';
//import './theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: const Color(0xFF470803),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromRGBO(77, 3, 3, 1),
      ),
    ),
    initialRoute: '/segundopos',
    routes: {
      '/': (_) => const Home(),
      '/login': (context) => const Login(),
      '/cadastro': (context) => const Cadastro(),
      '/primeiropos': (context) => const PrimeiroPos(),
      '/segundopos': (context) => const SegundoPos(),
    },
  ));
}
