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
                titulo: 'Pagamento com dinheiro',
                icone: Icon(
                  Icons.brightness_1_sharp,
                  color: Color(cfg.cor['amarelo']!),
                  size: 15,
                ),
                filho: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      /* -------------------------------------------------------------------------- */
                      /*                            Área dinheiro em mãos                           */
                      /* -------------------------------------------------------------------------- */
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: valorEmMaos(libera, 'mao'),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Dinheiro em mãos',
                              style: TextStyle(
                                color: Color(cfg.cor['txtPrincipal']!),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        onChanged: (v) {
                          debugPrint(v);
                        },
                        decoration: const InputDecoration(
                          prefixText: 'R\$',
                          hintText: ' 0,00',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      /* -------------------------------------------------------------------------- */
                      /*                             Área do campo troco                            */
                      /* -------------------------------------------------------------------------- */
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: valorEmMaos(libera, 'troco'),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Troco',
                              style: TextStyle(
                                color: Color(cfg.cor['txtPrincipal']!),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        width: double.infinity,
                        child: const Text('R\$ 10,00'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(thickness: 1),
                      BotaoPadrao(
                        texto: (libera ? 'Avançar' : 'Bloqueado'),
                        func: () {},
                        cor: (libera ? 'amarelo' : 'vermelho'),
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

  /* -------------------------------------------------------------------------- */
  /*                         Widget de dinheiro em mãos                         */
  /* -------------------------------------------------------------------------- */

  Widget valorEmMaos(bool liberar, String icon) {
    const String iconDinheiroEmMaos = 'lib/assets/img/dinheiro_maos.svg';
    const String iconTroco = 'lib/assets/img/icon_troco.svg';

    var selectIcon;

    switch (icon) {
      case 'mao':
        selectIcon = iconDinheiroEmMaos;
        break;
      case 'troco':
        selectIcon = iconTroco;
        break;
    }

    //final Widget svgIconDinheiroMaos =
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                selectIcon,
                colorFilter: ColorFilter.mode(
                    liberar ? Colors.green : Colors.red, BlendMode.srcIn),
              )
            ],
          ),
        ],
      ),
    );
  }
}
