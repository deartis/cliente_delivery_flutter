import 'package:app_cliente_restaurante/components/botao_padrao.dart';
import 'package:app_cliente_restaurante/components/botao_padrao_voltar.dart';
import 'package:app_cliente_restaurante/widgets/card_pos_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:app_cliente_restaurante/config/app_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelecaoPagamentoDinheiro extends StatefulWidget {
  const SelecaoPagamentoDinheiro({Key? key}) : super(key: key);

  @override
  State<SelecaoPagamentoDinheiro> createState() =>
      _SelecaoPagamentoDinheiroState();
}

class _SelecaoPagamentoDinheiroState extends State<SelecaoPagamentoDinheiro> {
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
              titulo: 'Pagamento com dinheiro',
              icone: Icon(
                Icons.brightness_1_sharp,
                color: Color(cfg.cor['amarelo']!),
                size: 15,
              ),
              filho: Column(children: [
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
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: valorEmMaos(),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text('Dinheiro em mãos'))
                  ],
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }

  Widget valorEmMaos() {
    const String iconDinheiroEmMaos = 'lib/assets/img/dinheiro_maos.svg';
    //final Widget svgIconDinheiroMaos =
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                iconDinheiroEmMaos,
                colorFilter:
                    const ColorFilter.mode(Colors.green, BlendMode.srcIn),
              )
            ],
          ),
          Flexible(
              child: TextField(
            decoration: const InputDecoration(
              prefix: Text('R\$'),
            ),
            onChanged: (v) {
              debugPrint(v);
            },
          ))
        ],
      ),
    );
  }
}
