import 'package:app_cliente_restaurante/components/botao_padrao.dart';
import 'package:flutter/material.dart';
import '../widgets/card_pos_cadastro.dart';
import '../widgets/header.dart';

class DetalhesPedidos extends StatelessWidget {
  const DetalhesPedidos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              const Header(titulo: 'Ordem',),
              CardPosCadastro(
                titulo: "Pedido 1",
                icone: const Icon(
                  Icons.brightness_1_sharp,
                  color: Color(0xFF800808),
                  size: 15,
                ),
                filho: Container(
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: const [
                            ItemOrdem(
                              chave: 'Prato',
                              valor: 'Frango Assado com salada verde',
                            ),
                            ItemOrdem(
                              chave: 'Acompanhamento',
                              valor: 'Arroz, feijão e farofa',
                            ),
                            ItemOrdem(
                              chave: 'Medida',
                              valor: 'padrão (20x20x7)',
                            ),
                            ItemOrdem(
                              chave: 'Valor',
                              valor: 'R\$ 25,00',
                            ),
                          ],
                        ),
                      ),
                      //const Text('Detalhe da compra'),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: TextField(
                          maxLines: null,
                          cursorColor: const Color(0xFF4D0303),
                          decoration: InputDecoration(
                            hintText: 'Sem farofa',
                            labelText: 'Detalhe da compra',
                            labelStyle: const TextStyle(
                                color: Color(0xFF4D0303), fontSize: 20),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Row(children: [
                        BotaoPadrao(texto: 'Avaçar', func: (){}),
                        BotaoPadrao(texto: 'Avaçar', func: (){}),
                      ],)
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
}

class ItemOrdem extends StatelessWidget {
  const ItemOrdem({super.key, this.chave, this.valor});
  final String? chave;
  final String? valor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(children: [
        Text(
          '$chave: ',
          style: const TextStyle(
            color: Color(0xFF4D0303),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Flexible(
          child: Text(
            '$valor',
            style: const TextStyle(
              color: Color.fromARGB(255, 241, 42, 42),
              fontSize: 16,
            ),
          ),
        ),
      ]),
    );
  }
}
