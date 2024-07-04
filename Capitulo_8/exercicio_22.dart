//22 - Criar um programa que:
//Utilize uma sub-rotina para receber os elementos de uma matriz 10x5 de
//números reais
//Utilize uma sub-rotina para calcular a soma de todos os elementos localizados
//abaixo da sexta linha dessa matriz
import 'dart:io';

void main(List<String> args) {
  List<List<double>> matriz = List.generate(10, (index) => List.filled(5, 0));

  receberMatriz(matriz);
  calcularSoma(matriz);
}

void receberMatriz(List<List<double>> matriz) {
  for (var i = 0; i < matriz.length; i++) {
    for (var j = 0; j < matriz[i].length; j++) {
      stdout.write("Digite o elemento da posição $i $j: ");
      matriz[i][j] = double.parse(stdin.readLineSync()!);
    }
  }
}

void calcularSoma(List<List<double>> matriz) {
  double soma = 0;
  for (var i = 7; i < matriz.length; i++) {
    for (var j = 0; j < matriz[i].length; j++) {
      soma += matriz[i][j];
    }
  }
  print("A soma dos elementos abaixo da sexta linha é: $soma");
}
