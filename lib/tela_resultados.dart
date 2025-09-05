import 'package:flutter/material.dart';

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
      body: Text('CORPO'),
    );
  }
}
