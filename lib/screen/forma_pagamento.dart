import 'package:app_cliente_restaurante/components/botao_padrao.dart';
import 'package:app_cliente_restaurante/components/botao_padrao_voltar.dart';
import 'package:app_cliente_restaurante/widgets/card_pos_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:app_cliente_restaurante/config/app_config.dart';

class FormaPagamento extends StatefulWidget {
  const FormaPagamento({Key? key}) : super(key: key);

  @override
  State<FormaPagamento> createState() => _FormaPagamentoState();
}

class _FormaPagamentoState extends State<FormaPagamento> {
  final cfg = AppConfig();
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
          child: Column(children: [
            const Divider(thickness: 1),
            CardPosCadastro(
              filho: Column(
                children: [
                  const Text('Total'),
                  const Text('R\$34,00'),
                  const Divider(thickness: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Column(
                          children: const [
                            Text('Dinheiro'),
                            Icon(Icons.payments_rounded,
                                size: 150, color: Colors.green)
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: const [
                            Text('Cartão'),
                            Icon(
                              Icons.credit_card_rounded,
                              size: 150,
                              color: Colors.blueAccent,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              titulo: 'Forma de pagamento',
              icone: Icon(
                Icons.brightness_1_sharp,
                color: Color(cfg.cor['amarelo']!),
                size: 15,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
