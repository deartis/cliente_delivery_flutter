import 'package:flutter/material.dart';
import '../config/app_config.dart';

class PrecoValor extends StatefulWidget {
  const PrecoValor({
    Key? key,
    required this.nomePrato,
  }) : super(key: key);

  final String nomePrato;

  @override
  State<PrecoValor> createState() => _PrecoValorState();
}

class _PrecoValorState extends State<PrecoValor> {
  String? groupValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '- ${widget.nomePrato}',
            style: TextStyle(
              color: Color(AppConfig().cor['primaria']!),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListTile(
            leading: Radio(
                activeColor: Color(AppConfig().cor['secundaria']!),
                value: 'grande',
                groupValue: groupValue,
                onChanged: (v) {
                  setState(() {
                    groupValue = v.toString();
                    print(groupValue);
                  });
                }),
            title: Text(
              'Grande - 25,00',
              style: TextStyle(
                color: Color(AppConfig().cor['txtPrincipal']!),
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: Radio(
                activeColor: Color(AppConfig().cor['secundaria']!),
                value: 'media',
                groupValue: groupValue,
                onChanged: (v) {
                  setState(() {
                    groupValue = v.toString();
                    print(groupValue);
                  });
                }),
            title: Text(
              'Média - 18,00',
              style: TextStyle(
                color: Color(AppConfig().cor['txtPrincipal']!),
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: Radio(
                activeColor: Color(AppConfig().cor['secundaria']!),
                value: 'pequena',
                groupValue: groupValue,
                onChanged: (v) {
                  setState(() {
                    groupValue = v.toString();
                    print(groupValue);
                  });
                }),
            title: Text(
              'Pequena - 14,00',
              style: TextStyle(
                color: Color(AppConfig().cor['txtPrincipal']!),
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
