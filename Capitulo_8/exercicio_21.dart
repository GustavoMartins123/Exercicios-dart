//21 - Faça uma sub-rotina que receba uma matriz 10x10 e determine o maior elemento
//acima da diagonal principal. Este valor deverá ser mostrado
//no programa principal
import 'dart:io';

void main(List<String> args) {
  List<List<int>> matriz = List.generate(10, (index) => List.filled(10, 0));

  receberMatriz(matriz);
}

void receberMatriz(List<List<int>> matriz) {
  for (var i = 0; i < matriz.length; i++) {
    for (var j = 0; j < matriz[i].length; j++) {
      stdout.write("Digite o elemento da posição $i $j: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }
  int maiorElemento = matriz[0][1];

  for (var i = 0; i < matriz.length; i++) {
    for (var j = i + 1; j < matriz[i].length; j++) {
      if (matriz[i][j] > maiorElemento) {
        maiorElemento = matriz[i][j];
      }
    }
  }
  print("O maior elemento acima da diagonal principal é: $maiorElemento");
}
