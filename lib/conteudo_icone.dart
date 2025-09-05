import 'package:flutter/material.dart';

const descricaoTextStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.black,
  fontWeight: FontWeight.w600
);

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
          style: descricaoTextStyle,
        ),
      ],
    );
  }
}