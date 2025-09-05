import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
  // propriedade que será informada
  final Color cor;
  final Widget? filhosCartao;
  // construtor
  const CartaoPadrao({
    super.key,
    required this.cor,
    this.filhosCartao,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: filhosCartao,
    );
  }
}