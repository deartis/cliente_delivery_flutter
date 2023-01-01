import 'package:flutter/material.dart';
//import 'dart:convert';
import 'package:app_cliente_restaurante/widgets/item_cardapio_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> dadosCardapio = [
    {
      "ID": 1,
      "titulo": 'Bife com batata frita',
      "imagem": 'lib/assets/img/bifecomfritas.jpg',
      "valores": 'G - 25,00 | P - 18,00',
    },
    {
      "ID": 2,
      "titulo": 'Carne assada com maionese',
      "imagem": 'lib/assets/img/carneassadamaionese.jpg',
      "valores": 'G - 25,00 | P - 14,00',
    },
    {
      "ID": 3,
      "titulo": 'Macarrão a bolonhesa com salada verde',
      "imagem": 'lib/assets/img/macarraobolonhesa.jpg',
      "valores": 'G - 25,00 | P - 18,00',
    },
  ];

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              //color: const Color(0XFF800808),
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('lib/assets/img/bkgTopo.png'),
                fit: BoxFit.cover,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Cardápio',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 175, 0, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 2,
              margin: const EdgeInsets.all(10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.star_rate_rounded),
                              Text('Cardápio do dia!'),
                            ],
                          ),
                          const Text(
                            '30/10/2022',
                            style: TextStyle(color: Color(0xffff3d00)),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Column(
                      children: [
                        for (dynamic item in dadosCardapio)
                          ItemCardapioList(
                            '',
                            title: item['titulo'],
                            imagem: item['imagem'],
                            id: item['ID'],
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFFAF00),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Próximo',
                                    style: TextStyle(
                                        color: Color(0xFF4C0303),
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
