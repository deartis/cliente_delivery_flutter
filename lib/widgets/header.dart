import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key, this.titulo}) : super(key: key);

  final String? titulo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/img/bkgTopo.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$titulo',
            style: const TextStyle(
                color: Color.fromRGBO(255, 175, 0, 1),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ],
      ),
    );
  }
}
