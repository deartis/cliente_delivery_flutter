import 'package:flutter/material.dart';

class RadioSelecaoPrecoValor extends StatefulWidget {
  const RadioSelecaoPrecoValor({
    Key? key,
    required this.tamanho,
    required this.preco,
    required this.valor,
    required this.groupValue,
    required this.onChangedValor,
  }) : super(key: key);

  final String tamanho;
  final String preco;
  final String valor;
  final String groupValue;
  final Function onChangedValor;

  @override
  State<RadioSelecaoPrecoValor> createState() => _RadioSelecaoPrecoValorState();
}

class _RadioSelecaoPrecoValorState extends State<RadioSelecaoPrecoValor> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      activeColor: const Color(0xFF800808),
      title: Text("${widget.tamanho} - R\$${widget.preco}"),
      value: widget.valor,
      groupValue: widget.groupValue,
      onChanged: (value) {
        setState(() {
          widget.onChangedValor(value);
        });
      },
    );
  }
}

class PrecoValor extends StatefulWidget {
  const PrecoValor({
    Key? key,
    required this.tamanho,
    required this.preco,
    required this.valor,
    required this.groupValue,
    required this.nomePrato,
    required this.onChangedValor,
  }) : super(key: key);

  final String tamanho;
  final String preco;
  final String valor;
  final String groupValue;
  final String nomePrato;
  final Function onChangedValor;

  @override
  State<PrecoValor> createState() => _PrecoValorState();
}

class _PrecoValorState extends State<PrecoValor> {
  String? valorRadio;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          widget.nomePrato,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        Container(
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              RadioSelecaoPrecoValor(
                tamanho: widget.tamanho,
                preco: widget.preco,
                valor: widget.valor,
                groupValue: '$valorRadio',
                onChangedValor: (val) {
                  setState(() {
                    valorRadio = val;
                    print(val);
                  });
                },
              ),
              RadioSelecaoPrecoValor(
                tamanho: widget.tamanho,
                preco: widget.preco,
                valor: widget.valor,
                groupValue: '$valorRadio',
                onChangedValor: (val) {
                  setState(() {
                    valorRadio = val;
                    print(val);
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
