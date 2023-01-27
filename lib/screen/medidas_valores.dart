import 'package:flutter/material.dart';

/* ------------------------- Importação dos widgets ------------------------- */
import '../widgets/card_pos_cadastro.dart';
import '../widgets/header.dart';
import '../widgets/radio_selecao_preco_valor.dart';

/* ----------------------- Importação dos componentes ----------------------- */
import '../components/botao_padrao_pequeno.dart';
import '../components/botao_padrao_voltar.dart';

/* ------------------- Importação das configurações do App ------------------ */
import '../config/app_config.dart';

class MedidasValores extends StatefulWidget {
  const MedidasValores({Key? key}) : super(key: key);

  @override
  State<MedidasValores> createState() => _MedidasValoresState();
}

class _MedidasValoresState extends State<MedidasValores> {
  String? valorRadio;

  @override
  Widget build(BuildContext context) {
    //print(AppConfig().cor['secundaria']);

    return Scaffold(
      drawer: const Drawer(
        child: Text('Drawer'),
      ),
      appBar: AppBar(
        title: const Text('JD Refeição'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Header(
                titulo: 'Medida/preço',
              ),
              CardPosCadastro(
                titulo: "Seleção 1",
                icone: Icon(
                  Icons.brightness_1_sharp,
                  color: Color(AppConfig().cor['secundaria']!),
                  size: 15,
                ),
                filho: Container(
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.zero,
                        child: Column(
                          children: [
                            PrecoValor(
                              nomePrato: 'Frango Assado com Purê',
                              tamanho: 'Grande',
                              preco: '25,00',
                              valor: 'grande',
                              groupValue: '$valorRadio',
                              onChangedValor: (val) {
                                setState(
                                  () {
                                    valorRadio = val;
                                    print(val);
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      const Divider(thickness: 1),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BotaoPadraoVoltar(),
                      BotaoPadraoPequeno(
                        texto: 'Avançar',
                        func: fazAlgo,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void fazAlgo() {
    print('Teste');
  }
}
