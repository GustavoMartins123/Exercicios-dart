//23 - Crie um programa que receba três valores(obrigatoriamente maiores
//que zero), representando as medidas dos três lados de um triângulo.
//Elabore sub-rotinas para:
//Determinar se esses lados formam um triângulo(sabe-se que, para ser
//triângulo, a medida de um lado qualquer deve ser inferior ou igual
//à soma das medidas dos outros dois).
//Determinar e mostrar o tipo de triângulo(equilátero, isósceles ou escaleno),
//caso as medidas formem um triângulo.
//*Todas as mensagens deverão ser mostradas no programa principal.
import 'dart:io';

void main(List<String> args) {
  List<int> lados = [];
  int qtdInteracao = 1;
  while (qtdInteracao < 4) {
    stdout.write("Digite o lado $qtdInteracao: ");
    int lado = int.parse(stdin.readLineSync()!);
    if (lado <= 0) {
      print("Valor inválido, o valor deve ser maior do que zero");
      continue;
    } else {
      lados.add(lado);
    }
    qtdInteracao++;
  }
  if (umTriangulo(lados)) {
    String tipo = tipoTriangulo(lados);
    print("Os lados formam um triângulo $tipo");
  } else {
    print("Os lados não formam um triângulo.");
  }
}

bool umTriangulo(List<int> lados) {
  return lados[0] < lados[1] + lados[2] &&
      lados[1] < lados[0] + lados[2] &&
      lados[2] < lados[0] + lados[1];
}

String tipoTriangulo(List<int> lados) {
  if (lados[0] == lados[1] && lados[1] == lados[2]) {
    return "Equilátero";
  } else if (lados[0] == lados[1] && lados[1] != lados[2] ||
      lados[1] == lados[2] && lados[2] != lados[0] ||
      lados[2] == lados[0] && lados[0] != lados[1]) {
    return "Isósceles";
  } else {
    return "Escaleno";
  }
}
