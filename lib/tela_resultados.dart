import 'package:flutter/material.dart';

// Imports locais
import 'cartao_padrao.dart';
import 'botao_inferior.dart';
import 'constantes.dart';

class TelaResultados extends StatelessWidget {
  const TelaResultados({super.key});

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
          Expanded(child:
            Text(
              'Resultados', style: kTituloTextStyle,
              textAlign: TextAlign.center,
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
                    'Normal',
                    style: kResultadoTextStyle,
                  ),
                  Text(
                    '18.4',
                    style: kIMCTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.5, right: 2.5),
                    child: Text(
                      'O seu IMC está baixo, você precisa aumentar sua massa corporal',
                      style: kCorpoTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BotaoInferior(
            rotulo: 'RECALCULAR',
            aoPressionar: () {
              Navigator.pushNamed(context, '/');
            },
          )
        ],
      ),
    );
  }
}
