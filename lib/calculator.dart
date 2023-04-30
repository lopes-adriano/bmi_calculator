import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  double _imc = 0;

  Calculator(this.height, this.weight);

  String calculateIMC() {
    _imc = weight / (pow(height / 100, 2));
    return _imc.toStringAsFixed(1);
  }

  String getResult() {
    if (_imc >= 25) {
      return 'SOBREPESO';
    } else if (_imc >= 18.5) {
      return 'NORMAL';
    } else {
      return 'MAGREZA';
    }
  }

  String getInterpretation() {
    if (_imc >= 25) {
      return 'Seu peso está acima do ideal.';
    } else if (_imc >= 18.5) {
      return 'Seu IMC é considerado normal para sua altura e peso.';
    } else {
      return 'Seu peso está abaixo do ideal.';
    }
  }
}
