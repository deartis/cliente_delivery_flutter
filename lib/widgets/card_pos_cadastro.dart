import 'package:flutter/material.dart';

class CardPosCadastro extends StatelessWidget {
  const CardPosCadastro({Key? key, this.filho, this.titulo, this.icone})
      : super(key: key);

  final dynamic filho;
  final String? titulo;
  final dynamic icone;

  @override
  Widget build(BuildContext context) {

    Widget filhoWidget() {
      return filho;
    }

    Widget iconeWidget(){
      return icone;
    }

    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(10),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                       Padding(padding: const EdgeInsets.only(right: 10),
                      child: iconeWidget(),
                      ),
                      Text('$titulo', style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C0303),
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            filhoWidget(),
          ])),
    );
  }
}
