import 'package:flutter/material.dart';

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
                Expanded(child:
                  CartaoPadrao(
                    cor: Color(0xFF9e9e9e),
                  ),
                ),
                Expanded(child:
                  CartaoPadrao(
                    cor: Color(0xFF9e9e9e),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child:
            CartaoPadrao(cor: Color(0xFF9e9e9e),),
          ),
          Expanded(child:
            Row(
              children: <Widget>[
                Expanded(child:
                  CartaoPadrao(
                    cor: Color(0xFF9e9e9e),
                  ),
                ),
                Expanded(child:
                  CartaoPadrao(
                    cor: Color(0xFF9e9e9e),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}

class CartaoPadrao extends StatelessWidget {
  // propriedade que será informada
  final Color cor;
  // construtor
  const CartaoPadrao({
    super.key,
    required this.cor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}