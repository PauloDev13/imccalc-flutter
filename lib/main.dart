import 'package:flutter/material.dart';
import 'package:imccalc_flutter/telas/splash_screen.dart';

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
      home: AnimatedSplashScreenWidget(),
      // home: TelaPrincipal(),
    );
  }
}
