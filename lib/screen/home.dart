import 'package:flutter/material.dart';
//import 'dart:convert';
import 'package:app_cliente_restaurante/widgets/item_cardapio_list.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/header.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> dadosCardapio = [
    {
      "ID": 0,
      "titulo": 'Bife com batata frita',
      "imagem": 'lib/assets/img/bifecomfritas.jpg',
      "valores": 'G - 25,00 | P - 18,00',
    },
    {
      "ID": 1,
      "titulo": 'Carne assada com maionese',
      "imagem": 'lib/assets/img/carneassadamaionese.jpg',
      "valores": 'G - 25,00 | P - 14,00',
    },
    {
      "ID": 2,
      "titulo": 'Macarrão a bolonhesa com salada verde',
      "imagem": 'lib/assets/img/macarraobolonhesa.jpg',
      "valores": 'G - 25,00 | P - 18,00',
    },
  ];

  List<dynamic> listaPedidos = [];

  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;

    final docRef = db
        .collection('Restaurante')
        .doc(
            'ewoiTm9tZSI6IkRlYXJ0aXMgQ2xpZW50ZSBEZW1vIiwKIkRhdGEiOiIxNi8wNC8yMDIyIiwKIlJlcHJlc2VudGFudGUiOiJKQUwiCn0=')
        .collection('CardapioDoDia')
        .doc('12-01-2023');

    debugPrint('$docRef');
    docRef.get().then((value) => {
          value.reference.snapshots().forEach((element) {
            //print(element.data());
          })
        });

    /*
    * .then((DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      print(data);
    }, onError: (e) => debugPrint('Erro: $e'));*/

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
            const Header(
              titulo: "Cardápio",
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
                            listapedidos: listaPedidos,
                            pedidos: (prato) => addPedidos(prato),
                            retirapedido: (int posicao) => delPedidos(posicao),
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

  addPedidos(String prato) {
    setState(() {
      listaPedidos.add(prato);
      //print(listaPedidos);
    });
    //print(listaPedidos);
  }

  delPedidos(int posicao) {
    setState(() {
      listaPedidos.removeAt(posicao);
      //print(listaPedidos);
    });
  }
}
