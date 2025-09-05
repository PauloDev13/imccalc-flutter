import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Imports locais
import 'cartao_padrao.dart';
import 'conteudo_icone.dart';
import 'constantes.dart';

enum Genero {
  masculino,
  feminino,
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  // Variável do tipo opcional (pode ser nula)
  Genero? sexoSelecionado;
  int altura = 180;
  int peso = 60;
  int idade =20;

  // Color corCartaoMasculinoPadrao = corInativaCartao;
  // Color corCartaoFemininoPadrao = corInativaCartao;
  //
  // void atualizaCorCartao(Genero sexo) {
  //   if (sexo == Genero.masculino) {
  //     if (corCartaoMasculinoPadrao == corInativaCartao) {
  //       corCartaoMasculinoPadrao = corAtivaCartao;
  //       corCartaoFemininoPadrao = corInativaCartao;
  //     } else {
  //       corCartaoMasculinoPadrao = corInativaCartao;
  //     }
  //   }
  //
  //   if (sexo == Genero.feminino) {
  //     if (corCartaoFemininoPadrao == corInativaCartao) {
  //       corCartaoFemininoPadrao = corAtivaCartao;
  //       corCartaoMasculinoPadrao = corInativaCartao;
  //     } else {
  //       corCartaoFemininoPadrao = corInativaCartao;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child:
            Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    aoPressionar: () {
                      setState(() {
                        sexoSelecionado = Genero.masculino;
                      });
                    },
                    cor: sexoSelecionado == Genero.masculino
                      ? kCorAtivaCartao
                      : kCorInativaCartao,
                    filhosCartao: ConteudoIcone(
                      icone: FontAwesomeIcons.mars,
                      descricao: 'MASCULINO',
                    )
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    aoPressionar: () {
                      setState(() {
                        sexoSelecionado = Genero.feminino;
                      });
                    },
                    cor: sexoSelecionado == Genero.feminino
                    ? kCorAtivaCartao
                    : kCorInativaCartao,
                    filhosCartao: ConteudoIcone(
                      icone: FontAwesomeIcons.venus,
                      descricao: 'FEMINIMO',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CartaoPadrao(
              aoPressionar: () {},
              cor: kCorAtivaCartao,
              filhosCartao: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'ALTURA',
                    style: kDescricaoTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        altura.toString(),
                        style: kNumerosTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kDescricaoTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Color(0xFFff5822),
                    inactiveColor: Color(0xFF8d8e98),
                    value: altura.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double novoValor) {
                      setState(() {
                        altura = novoValor.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(child:
            Row(
              children: <Widget>[
                Expanded(
                  child: CartaoPadrao(
                    aoPressionar: (){},
                    cor: kCorAtivaCartao,
                    filhosCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'PESO',
                          style: kDescricaoTextStyle,
                        ),
                        Text(
                          peso.toString(),
                          style: kNumerosTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            BotaoArredondado(
                              icone: FontAwesomeIcons.plus,
                              aoPressionar: () {
                                setState(() {
                                  peso++;
                                });
                              },
                            ),
                            BotaoArredondado(
                              icone: FontAwesomeIcons.minus,
                              aoPressionar: () {
                                setState(() {
                                  peso--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    aoPressionar: (){},
                    cor: kCorAtivaCartao,
                    filhosCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'IDADE',
                          style: kDescricaoTextStyle,
                        ),
                        Text(
                          idade.toString(),
                          style: kNumerosTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            BotaoArredondado(
                              icone: FontAwesomeIcons.plus,
                              aoPressionar: () {
                                setState(() {
                                  idade++;
                                });
                              },
                            ),
                            BotaoArredondado(
                              icone: FontAwesomeIcons.minus,
                              aoPressionar: () {
                                setState(() {
                                  idade--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kCorContainerInferior,
            margin: EdgeInsets.only(top: 5.0),
            width: double.infinity,
            height: kAlturaContainerInferior,
          )
        ],
      )
    );
  }
}

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
