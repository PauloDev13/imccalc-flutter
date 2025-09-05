import 'package:flutter/material.dart';
import 'constantes.dart';

class ConteudoIcone extends StatelessWidget {
  final IconData icone;
  final String descricao;

  const ConteudoIcone({
    super.key,
    required this.icone,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icone,
          size: 95.0,
        ),
        SizedBox(height: 15.0,),
        Text(
          descricao,
          style: kDescricaoTextStyle,
        ),
      ],
    );
  }
}