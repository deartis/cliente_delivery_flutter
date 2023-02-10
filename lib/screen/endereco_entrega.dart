import 'package:app_cliente_restaurante/components/botao_padrao.dart';
import 'package:app_cliente_restaurante/components/botao_padrao_voltar.dart';
import 'package:app_cliente_restaurante/widgets/card_pos_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:app_cliente_restaurante/config/app_config.dart';

class EnderecoEntrega extends StatefulWidget {
  const EnderecoEntrega({Key? key}) : super(key: key);

  @override
  State<EnderecoEntrega> createState() => _EnderecoEntregaState();
}

class _EnderecoEntregaState extends State<EnderecoEntrega> {
  String? tipoEndereco = 'enderecoCadastrado';
  final cnf = AppConfig();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Text('Drawer'),
      ),
      appBar: AppBar(
        title: const Text('JD Refeição'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            CardPosCadastro(
              filho: Column(
                children: [
                  ListTile(
                    title: const Text('Endereço cadastrado'),
                    leading: Radio(
                        value: 'enderecoCadastrado',
                        groupValue: tipoEndereco,
                        onChanged: (vl) {
                          setState(() {
                            tipoEndereco = vl;
                          });
                        }),
                  ),
                  ListTile(
                    title: const Text('Endereço cadastrado'),
                    leading: Radio(
                        value: 'outroEndereco',
                        groupValue: tipoEndereco,
                        onChanged: (vl) {
                          setState(() {
                            tipoEndereco = vl;
                          });
                        }),
                  ),
                ],
              ),
              titulo: 'Endereço de entrega',
              icone: const Icon(
                Icons.brightness_1_sharp,
                color: Color(0xFF800808),
                size: 15,
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Form(
                  child: Column(
                    children: [
                      textFieldComponente("*Endereço", "texto", () {}),
                      textFieldComponente("*Número", "texto", () {}),
                      textFieldComponente("Complemento", "texto", () {}),
                      textFieldComponente("CEP", "numero", () {}),
                      textFieldComponente("Bairro", "texto", () {}),
                      textFieldComponente(
                          "Ponto de referência", "texto", () {}),
                      textFieldComponente("Responsável", "texto", () {}),
                      BotaoPadrao(
                        texto: 'Confirmar',
                        func: () {},
                        cor: 'amarelo',
                      ),
                      const BotaoPadraoVoltar(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget textFieldComponente(String label, String teclado, Function onChanged) {
    dynamic typeKeyboard;

    switch (teclado) {
      case 'texto':
        typeKeyboard = TextInputType.text;
        break;
      case 'numero':
        typeKeyboard = TextInputType.number;
        break;
      default:
        typeKeyboard = TextInputType.text;
    }

    return TextField(
      onChanged: onChanged(),
      keyboardType: typeKeyboard,
      decoration: InputDecoration(
        labelText: label,
        hintText: 'Av. Lucas Alves',
        labelStyle: TextStyle(
            color: Color(cnf.cor['primaria']!),
            fontSize: 18,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
