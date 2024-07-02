//22 - Faça um programa que receba o número de lados de um polígono convexo,
//calcule e mostre o número de diagonais desse polígono. Sabe-se que
//ND = N * (N-3)/2, onde N é o numero de lados do polígono.
import 'dart:io';

void main() {
  print("Digite o numero de Lados: ");
  int numeroLados = int.parse(stdin.readLineSync()!);
  mostrarNumerosDiagonais(numeroLados);
}

void mostrarNumerosDiagonais(int numeroLados) {
  double numeroDiagonais = numeroLados * (numeroLados - 3) / 2;
  print("Numero de diagonais: ${numeroDiagonais.toInt()}");
}
