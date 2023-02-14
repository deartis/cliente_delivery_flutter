import 'package:app_cliente_restaurante/components/botao_padrao.dart';
import 'package:app_cliente_restaurante/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class Timeline extends StatefulWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  var cfg = AppConfig();
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
          child: Card(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                timeline(texto: 'Pedido enviado', status: true),
                timeline(texto: 'Pedido sendo processado', status: false),
                timeline(
                    texto: 'Pedido encaminhado para entrega', status: false),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                BotaoPadrao(
                    texto: 'Detalhes da compra', cor: 'amarelo', func: () {}),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget timeline({String? texto, bool? status}) {
    //status = status;
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Icon(
                Icons.check_circle_outline_outlined,
                //child: const Icon(Icons.radio_button_unchecked,
                size: 50, color: status! ? Colors.green : Colors.grey,
              ),
            ),
            Expanded(
              child: Text(
                '$texto',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(status ? 0xFF800808 : 0xFFAAAAAA),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
