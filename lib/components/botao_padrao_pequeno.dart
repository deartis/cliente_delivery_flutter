import 'package:flutter/material.dart';

class BotaoPadraoPequeno extends StatelessWidget {
  const BotaoPadraoPequeno(
      {Key? key, this.cor, required this.texto, required this.func})
      : super(key: key);

  final String? cor;
  final String texto;
  final Function func;

  @override
  Widget build(BuildContext context) {
    int corTexto = cor=='amarelo' || cor==null ?0xFF4C0303:0xFFFFFFFF;
    int corFundo() {
      switch (cor) {
        case 'amarelo':
          return 0xFFFFAF00;
        case 'vermelho':
          return 0xFF800808;
        default:
          return 0xFFFFAF00;
      }
    }

    return ElevatedButton(
      onPressed: func(),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(corFundo()),
        //minimumSize: const Size.fromHeight(50),
      ),
      child: Text(
        texto,
        style: TextStyle(fontSize: 20, color: Color(corTexto)),
      ),
    );
  }
}
