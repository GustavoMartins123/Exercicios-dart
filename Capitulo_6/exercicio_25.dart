//25 - Faça um programa que leia um vetor com quinze posições para números inteiros.
//Depois da leitura, divida todos os seus elementos pelo maior valor do vetor.
//Mostre o vetor após os cálculos.
import 'dart:math';

void main(List<String> args) {
  List<int> numeros = List.generate(15, (int index) => index++);
  int maiorNumero = numeros.reduce(max);
  for (var i = 0; i < numeros.length; i++) {
    numeros[i] = (numeros[i] / maiorNumero).round();
  }
  print("O vetor após a divisão é: $numeros");
}
