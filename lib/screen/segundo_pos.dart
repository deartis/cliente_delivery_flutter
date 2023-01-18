import 'package:flutter/material.dart';
import '../widgets/card_pos_cadastro.dart';
import '../widgets/header.dart';
import '../components/textfield_component.dart';
import '../components/botao_padrao.dart';

class SegundoPos extends StatefulWidget {
  const SegundoPos({Key? key}) : super(key: key);

  @override
  State<SegundoPos> createState() => _SegundoPosState();
}

class _SegundoPosState extends State<SegundoPos> {
  final ruaController = TextEditingController();
  final numeroController = TextEditingController();
  final complementoController = TextEditingController();
  final cepController = TextEditingController();
  final bairroController = TextEditingController();
  final cidadeController = TextEditingController();
  final pontoReferenciaController = TextEditingController();

  void ruaChanged(String? rua) {
    print(rua);
  }

  void numeroChanged(String numero) {
    print(numero);
  }

  void complementoChanged(String complemento) {
    print(complemento);
  }

  void cepChanged(String cep) {
    print(cep);
  }

  void bairroChanged(String bairro) {
    print(bairro);
  }

  void cidadeChanged(String cidade) {
    print(cidade);
  }

  void pontoReferenciaChanged(String pontoReferencia) {
    print(pontoReferencia);
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
            const Header(titulo: "Edereço"),
            CardPosCadastro(
              titulo: "Cadastro de endereço",
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
                        label: "Rua",
                        hint: "Rua Europa",
                        teclado: "texto",
                        controller: ruaController,
                        func: ruaChanged),
                    TextfieldComponent(
                        label: "Numero",
                        hint: "123",
                        teclado: "texto",
                        controller: numeroController,
                        func: numeroChanged),
                    TextfieldComponent(
                        label: "complemento",
                        hint: "casa 4",
                        teclado: "texto",
                        controller: complementoController,
                        func: complementoChanged),
                    TextfieldComponent(
                        label: "CEP",
                        hint: "26153300",
                        teclado: "numero",
                        controller: cepController,
                        func: cepChanged),
                    TextfieldComponent(
                        label: "Bairro",
                        hint: "Miguel Couto",
                        teclado: "texto",
                        controller: bairroController,
                        func: bairroChanged),
                    TextfieldComponent(
                        label: "Cidade",
                        hint: "Nova Iguaçu",
                        teclado: "texto",
                        controller: cidadeController,
                        func: cidadeChanged),
                    TextfieldComponent(
                        label: "Ponto de referência",
                        hint: "Bar do Zé",
                        teclado: "texto",
                        controller: pontoReferenciaController,
                        func: pontoReferenciaChanged),
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
