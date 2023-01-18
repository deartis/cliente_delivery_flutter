import 'package:flutter/material.dart';

class TextfieldComponent extends StatelessWidget {
  const TextfieldComponent(
      {Key? key,
      required this.label,
      required this.hint,
      required this.teclado,
      required this.controller,
      required this.func})
      : super(key: key);

  final String label;
  final String hint;
  final String teclado;
  final TextEditingController controller;
  final Function func;

  @override
  Widget build(BuildContext context) {
    tipoTeclado() {
      switch (teclado) {
        case "numerico":
          return TextInputType.number;
        case "telefone":
          return TextInputType.phone;
        case "email":
          return TextInputType.emailAddress;
        case "data":
          return TextInputType.datetime;
        case "texto":
          return TextInputType.text;
      }
    }

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          fontSize: 20,
          color: Color(0xFF4C0303),
        ),
        hintText: hint,
      ),
      keyboardType: tipoTeclado(),
      onChanged: (v) => func(v),
    );
  }
}
