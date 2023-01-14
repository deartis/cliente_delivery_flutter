import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:app_cliente_restaurante/screen/home.dart';
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
    title: "Teste",
    home: const Home(),
  ));
}
