import 'package:flutter/material.dart';

class ItemCardapioList extends StatefulWidget {
  const ItemCardapioList(
    String s, {
    Key? key,
    required this.title,
    required this.imagem,
    required this.id,
    required this.listapedidos,
    required this.pedidos,
    required this.retirapedido,
  }) : super(key: key);

  final String title;
  final String imagem;
  final int id;
  final List listapedidos;
  final Function(String) pedidos;
  final Function(int) retirapedido;

  @override
  State<ItemCardapioList> createState() => _ItemCardapioListState();
}

class _ItemCardapioListState extends State<ItemCardapioList> {
  int count = 0;
  _ItemCardapioListState();

  String? get title => null;
  @override
  Widget build(BuildContext context) {
    void increment() {
      setState(() {
        count++;
        widget.pedidos(widget.title);
      });
    }

    void decrement() {
      var positionPedido = widget.listapedidos.indexOf(widget.title);

      setState(() {
        count--;
        widget.retirapedido(positionPedido);
      });
    }

    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              child: Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          child: Column(
                        children: [
                          Container(
                            //width: 85,
                            height: 85,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                              image: DecorationImage(
                                image: AssetImage(widget.imagem),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Text(widget.title,
                              style: const TextStyle(
                                color: Color(0xff800808),
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center),
                          const Divider(thickness: 2),
                          SizedBox(
                              child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: const Color(0xffEBD3D3))),
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed:
                                              count <= 0 ? null : decrement,
                                          icon: Icon(
                                            Icons.remove_circle,
                                            color: count <= 0
                                                ? const Color(0xffB77D7A)
                                                : const Color(0xffFF3D00),
                                          ),
                                          iconSize: 30),
                                      SizedBox(
                                        width: 50,
                                        child: Center(
                                          child: Text(
                                            count.toString(),
                                            style: const TextStyle(
                                              color: Color(0xff800808),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: increment,
                                          icon: const Icon(
                                            Icons.add_circle,
                                            color: Color(0xffFF3D00),
                                          ),
                                          iconSize: 30),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
