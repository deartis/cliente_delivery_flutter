import 'package:flutter/material.dart';
import '../widgets/card_pos_cadastro.dart';
import '../widgets/header.dart';
import '../components/botao_padrao_pequeno.dart';
import '../components/botao_padrao_voltar.dart';

class MedidasValores extends StatefulWidget {
  const MedidasValores({Key? key}) : super(key: key);

  @override
  State<MedidasValores> createState() => _MedidasValoresState();
}

class _MedidasValoresState extends State<MedidasValores> {
  String? gender;

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
              const Header(
                titulo: 'Medida/preço',
              ),
              CardPosCadastro(
                titulo: "Seleção 1",
                icone: const Icon(
                  Icons.brightness_1_sharp,
                  color: Color(0xFF800808),
                  size: 15,
                ),
                filho: Container(
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const Text('Frango assado com salada verde', style: TextStyle(
                        fontSize: 16,
                      ),),
                      RadioListTile(
                        activeColor: const Color(0xFF800808),
                        title: const Text("Grande - R\$25,00"),
                        value: "grande",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        activeColor: const Color(0xFF800808),
                        title: const Text("Pequena - R\$18,00"),
                        value: "Pequena",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
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
                        func: () {},
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
}
