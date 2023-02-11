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
                  Text(
                    'Total',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(cfg.cor['txtPrincipal']!),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'R\$34,00',
                    style: TextStyle(
                        color: Color(cfg.cor['txtDestaque']!),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(thickness: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          debugPrint('Dinheiro');
                        },
                        child: Flexible(
                          child: Column(
                            children: const [
                              Text(
                                'Dinheiro',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                              Icon(Icons.payments_rounded,
                                  size: 150, color: Colors.green)
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint('Cartão');
                        },
                        child: Flexible(
                          child: Column(
                            children: const [
                              Text(
                                'Cartão',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 14, 102, 255),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.credit_card_rounded,
                                size: 150,
                                color: Color.fromARGB(255, 14, 102, 255),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BotaoPadrao(
                    texto: 'Confirmar',
                    func: () {},
                    cor: 'amarelo',
                  ),
                  const BotaoPadraoVoltar(),
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
