import 'package:flutter/material.dart';

class BotaoArredondado extends StatelessWidget {
  final IconData icone;
  final VoidCallback aoPressionar;

  const BotaoArredondado({
    super.key,
    required this.icone,
    required this.aoPressionar

  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF7e7e7e),
      onPressed: aoPressionar,
      child: Icon(
        icone,
      ),
    );
  }
}