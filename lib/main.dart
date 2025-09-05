import 'package:flutter/material.dart';

// Imports locais
import 'tela_resultados.dart';
import 'tela_principal.dart';

void main() => runApp(CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF616161),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF616161),
          centerTitle: true,
          elevation: 2,
        ),
      ),
      // home: TelaPrincipal(),
      initialRoute: '/',
      routes: {
        '/': (context) => TelaPrincipal(),
        '/resultados': (context) => TelaResultados()
      },
    );
  }
}
