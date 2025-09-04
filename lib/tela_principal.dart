import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const ALTURA_CONTAINER_INFERIOR = 80.0;
const COR_CONTAINER_INFERIOR = Color(0xFFff5822);
const COR_ATIVA_CARTAO = Color(0xFF9e9e9e);

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
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
                    cor: COR_ATIVA_CARTAO,
                    filhosCartao: ConteudoIcone(
                      icone: FontAwesomeIcons.mars,
                      descricao: 'MASCULINO',
                    )
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    cor: COR_ATIVA_CARTAO,
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
              cor: COR_ATIVA_CARTAO,
            ),
          ),
          Expanded(child:
            Row(
              children: <Widget>[
                Expanded(
                  child: CartaoPadrao(
                    cor: COR_ATIVA_CARTAO,
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    cor: COR_ATIVA_CARTAO,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: COR_CONTAINER_INFERIOR,
            margin: EdgeInsets.only(top: 5.0),
            width: double.infinity,
            height: ALTURA_CONTAINER_INFERIOR,
          )
        ],
      )
    );
  }
}

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
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

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