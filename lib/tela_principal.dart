import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Imports locais
import 'cartao_padrao.dart';
import 'conteudo_icone.dart';

const alturaContainerInferior = 80.0;
const corContainerInferior = Color(0xFFff5822);
const corAtivaCartao = Color(0xFF9e9e9e);
const corInativaCartao = Color(0xFF7e7e7e);

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
                      ? corAtivaCartao
                      : corInativaCartao,
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
                    ? corAtivaCartao
                    : corInativaCartao,
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
              cor: corAtivaCartao,
            ),
          ),
          Expanded(child:
            Row(
              children: <Widget>[
                Expanded(
                  child: CartaoPadrao(
                    aoPressionar: (){},
                    cor: corAtivaCartao,
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    aoPressionar: (){},
                    cor: corAtivaCartao,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: corContainerInferior,
            margin: EdgeInsets.only(top: 5.0),
            width: double.infinity,
            height: alturaContainerInferior,
          )
        ],
      )
    );
  }
}