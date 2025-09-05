import 'dart:math';

class CalculadoraIMC {
  //propriedades
  late final int altura;
  late final int peso;
  double _imc = 0.0;

  // construtor
  CalculadoraIMC({
    required this.altura,
    required this.peso
  });

  String calcularIMC() {
    _imc = peso / pow(altura / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String obterResultado() {
    if (_imc > 25) {
      return 'Acima do peso';
    } else if (_imc > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String obterInterpretacao() {
    if (_imc >= 25) {
      return 'O seu IMC está alto, você está acima do peso! Se exercite mais.';
    } else if (_imc > 18.5) {
      return 'Excelente! Seu IMC está perfeito. Parabéns!';
    } else {
      return 'O seu IMC está baixo, você precia aumentar sua massa corporal.';
    }
  }
}