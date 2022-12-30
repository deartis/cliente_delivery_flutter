import 'package:app_cliente_restaurante/screen/home.dart';
import 'package:flutter/material.dart';
//import './theme/theme.dart';   

void main() {
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
