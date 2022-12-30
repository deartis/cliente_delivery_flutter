import 'package:flutter/material.dart';
import 'package:app_cliente_restaurante/widgets/item_cardapio_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  Map<String, String> dadosCardapio =
  {
    "titulo"  : 'Bife com batata frita',
    "imagem"  : 'lib/assets/img/bkgTopo.png',
    "valores" : 'G - 25,00 | P - 18,00',
  };

  @override
  Widget build(BuildContext context) {

    print(dadosCardapio['titulo']);

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
                    //====================
                    //Título do card
                    //====================
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
                        const ItemCardapioList(),
                        const ItemCardapioList(),
                        const ItemCardapioList(),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ElevatedButton(onPressed: (){}, child: const Text('Avançar')),
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
