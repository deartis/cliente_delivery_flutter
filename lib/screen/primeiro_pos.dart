import 'package:app_cliente_restaurante/widgets/card_pos_cadastro.dart';
import 'package:flutter/material.dart';
import '../widgets/header.dart';

class PrimeiroPos extends StatefulWidget {
  const PrimeiroPos({Key? key}) : super(key: key);

  @override
  State<PrimeiroPos> createState() => _PrimeiroPosState();
}

class _PrimeiroPosState extends State<PrimeiroPos> {

  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final telefoneController = TextEditingController();
  final dataNascimentoController = TextEditingController();

  void _nomeChanged(String nome){
    print(nome);
  }
  void _emailChanged(String email){
    print(email);
  }
  void _telefoneChanged(String telefone){
    print(telefone);
  }
  void _dataNascimentoChanged(String nascimento){
    print(nascimento);
  }


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
          children:  [
            const Header(titulo: "Cardápio"),
            CardPosCadastro(
              titulo: "Dados pessoais",
              icone: const Icon(Icons.brightness_1_sharp, color: Color(0xFF800808), size: 15,),
              filho: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                children: const [
                  textFieldDadosPessoais("Nome", "exp.: Jonas", , c, f)
                ],
              ),
              ),
            ),
            // Card(
            //   elevation: 2,
            //   margin: const EdgeInsets.all(10),
            //   child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       child: Column(children: [
            //         Container(
            //           decoration: const BoxDecoration(),
            //           padding: const EdgeInsets.all(10),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Row(
            //                 children: const [
            //                   Icon(Icons.person),
            //                   Text('Dados pessoais'),
            //                 ],
            //               ),
            //               const Text(
            //                 '30/10/2022',
            //                 style: TextStyle(color: Color(0xffff3d00)),
            //               ),
            //             ],
            //           ),
            //         ),
            //         const Divider(),
            //       ])),
            // )
          ],
        ),
      ),
    );
  }
}

Widget textFieldDadosPessoais(String label, String prefix, dynamic teclado, TextEditingController c, Function f){

  tipoTeclado(){
    switch (teclado) {
      case "numerico":
        return TextInputType.number;
      case "telefone":
        return TextInputType.phone;
      case "email":
        return TextInputType.emailAddress;
      case "data":
        return TextInputType.datetime;
      default:
      return TextInputType.text;
    }
  }

  return TextField(
    controller: c,
    decoration: InputDecoration(
      labelText: label,
      prefixText: prefix,
    ),
    keyboardType: tipoTeclado(),
    onChanged: f,
  );
}
