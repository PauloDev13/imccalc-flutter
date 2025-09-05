import 'package:flutter/material.dart';

// Imports locais
import '../componentes/cartao_padrao.dart';
import '../componentes/botao_inferior.dart';
import '../constantes.dart';

class TelaResultados extends StatelessWidget {
  final String resultadoIMC;
  final String resultadoTexto;
  final String interpretacao;

  // construtor
  const TelaResultados({
    super.key,
    required this.resultadoIMC,
    required this.resultadoTexto,
    required this.interpretacao,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CALCULADORA IMC',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Resultado',
                style: kTituloTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CartaoPadrao(
              cor: kCorAtivaCartao,
              filhosCartao: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultadoTexto.toUpperCase(),
                    style: kResultadoTextStyle,
                  ),
                  Text(
                    resultadoIMC,
                    style: kIMCTextStyle,
                  ),
                  Text(
                    interpretacao,
                    style: kCorpoTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BotaoInferior(
            rotulo: 'RECALCULAR',
            aoPressionar: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
