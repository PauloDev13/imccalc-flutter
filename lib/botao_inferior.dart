import 'package:flutter/material.dart';
import 'constantes.dart';

class BotaoInferior extends StatelessWidget {
  final VoidCallback aoPressionar;
  final String rotulo;

  const BotaoInferior({
    super.key,
    required this.aoPressionar,
    required this.rotulo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
        color: kCorContainerInferior,
        margin: EdgeInsets.only(top: 5.0),
        padding: EdgeInsets.only(bottom: 40.0),
        width: double.infinity,
        height: kAlturaContainerInferior,
        child: Center(
          child: Text(
            rotulo,
            style: kBotaoGrandeTextStyle,
          ),
        ),
      ),
    );
  }
}