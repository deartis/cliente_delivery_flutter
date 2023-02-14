import 'package:flutter/material.dart';

class BotaoPadrao extends StatefulWidget {
  const BotaoPadrao(
      {Key? key, this.cor, required this.texto, required this.func})
      : super(key: key);

  final String? cor;
  final String texto;
  final Function func;

  @override
  State<BotaoPadrao> createState() => _BotaoPadraoState();
}

class _BotaoPadraoState extends State<BotaoPadrao> {
  @override
  Widget build(BuildContext context) {
    int corTexto = widget.cor == 'amarelo' ? 0xFF4C0303 : 0xFFFFFFFF;
    int corFundo() {
      switch (widget.cor) {
        case 'amarelo':
          return 0xFFFFAF00;
        case 'vermelho':
          return 0xFF800808;
        default:
          return 0xFFFFAF00;
      }
    }

    return ElevatedButton(
      onPressed: () {
        setState(() {
          widget.func();
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(corFundo()),
        minimumSize: const Size.fromHeight(50),
      ),
      child: Text(
        widget.texto,
        style: TextStyle(fontSize: 20, color: Color(corTexto)),
      ),
    );
  }
}
