import 'package:flutter/material.dart';

class BotaoPadraoVoltar extends StatelessWidget {
  const BotaoPadraoVoltar(
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      Navigator.pop(context);
    }, child: const Text('Voltar'));
  }
}
