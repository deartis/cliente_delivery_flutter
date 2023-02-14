import 'package:app_cliente_restaurante/components/botao_padrao.dart';
import 'package:app_cliente_restaurante/components/botao_padrao_pequeno.dart';
import 'package:app_cliente_restaurante/components/botao_padrao_voltar.dart';
import 'package:app_cliente_restaurante/widgets/card_pos_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:app_cliente_restaurante/config/app_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelecaoPagamentoCartao extends StatefulWidget {
  const SelecaoPagamentoCartao({Key? key}) : super(key: key);

  @override
  State<SelecaoPagamentoCartao> createState() => _SelecaoPagamentoCartaoState();
}

class _SelecaoPagamentoCartaoState extends State<SelecaoPagamentoCartao> {
  final cfg = AppConfig();
  bool libera = true;

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Divider(thickness: 1),
              CardPosCadastro(
                titulo: 'Pagamento com cartão',
                icone: Icon(
                  Icons.brightness_1_sharp,
                  color: Color(cfg.cor['amarelo']!),
                  size: 15,
                ),
                filho: Column(children: [
                  SvgPicture.asset('lib/assets/img/credt_card.svg'),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'O Pagamento será realizado no ato da entrega do pedido.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(cfg.cor['txtDestaque']!),
                      ),
                    ),
                  ),
                  const Divider(thickness: 1),
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
                  const SizedBox(
                    height: 10,
                  ),
                  BotaoPadrao(
                    texto: 'Finalizar',
                    func: dialogFinalizacao,
                    cor: 'amarelo',
                  ),
                  const BotaoPadraoVoltar(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  dialogFinalizacao() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Pedido realizado com sucesso!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(cfg.cor['txtPrincipal']!),
                    ),
                  ),
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 100,
                  ),
                ],
              ),
            ),
            actions: [
              BotaoPadraoPequeno(
                texto: 'OK',
                func: navegarTimeLime,
              )
            ],
          );
        });
  }

  navegarTimeLime() {
    Navigator.pushNamed(context, '/timeline');
  }
}
