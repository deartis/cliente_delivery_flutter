import 'package:flutter/material.dart';
import '../widgets/card_pos_cadastro.dart';
import '../widgets/header.dart';
import '../components/textfield_component.dart';
import '../components/botao_padrao.dart';

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

  void nomeChanged(String? nome) {
    print(nome);
  }

  void emailChanged(String email) {
    print(email);
  }

  void telefoneChanged(String telefone) {
    print(telefone);
  }

  void dataNascimentoChanged(String nascimento) {
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
          children: [
            const Header(titulo: "Seja bem vindo!"),
            CardPosCadastro(
              titulo: "Dados pessoais",
              icone: const Icon(
                Icons.brightness_1_sharp,
                color: Color(0xFF800808),
                size: 15,
              ),
              filho: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    TextfieldComponent(
                        label: "Nome",
                        hint: "Jonas Alves",
                        teclado: "texto",
                        controller: nomeController,
                        func: nomeChanged),
                    TextfieldComponent(
                        label: "Email",
                        hint: "exemplo@exp.com",
                        teclado: "email",
                        controller: emailController,
                        func: emailChanged),
                    TextfieldComponent(
                        label: "Telefone",
                        hint: "21912341234",
                        teclado: "telefone",
                        controller: telefoneController,
                        func: telefoneChanged),
                    TextfieldComponent(
                        label: "Data de nascimento",
                        hint: "20/01/1985",
                        teclado: "data",
                        controller: dataNascimentoController,
                        func: dataNascimentoChanged),
                    const SizedBox(
                      height: 20,
                    ),
                    BotaoPadrao(
                      texto: 'Cadastrar',
                      func: () {},
                      cor: 'amarelo',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
