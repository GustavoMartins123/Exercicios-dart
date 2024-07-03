//22 - Elabore um programa que receba a idade e a altura de várias pessoas,
//calcule e mostre a média das alturas daquelas com mais de 50 abnos. Para
//encerrar a entrada de dados, digite idade menor ou igual a zero.
import 'dart:io';

List<int> idades = [];
List<int> alturas = [];
void main(List<String> args) {
  print("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);
  if (idade <= 0) {
    print("Idade inválida");
    return;
  }
  print("Digite sua altura(ex: 165): ");
  int altura = int.parse(stdin.readLineSync()!);
  idades.add(idade);
  alturas.add(altura);
  while (idade > 0) {
    print("Digite sua idade: ");
    idade = int.parse(stdin.readLineSync()!);
    if (idade <= 0) {
      continue;
    }
    print("Digite sua altura: ");
    altura = int.parse(stdin.readLineSync()!);
    print("Para encerrar digite 0 ou um numero negativo");
    idades.add(idade);
    alturas.add(altura);
  }
  calcularMediaAltura();
}

void calcularMediaAltura() {
  double media = 0;
  int quantidade = 0;
  for (int i = 0; i < idades.length; i++) {
    if (idades[i] > 50) {
      media += alturas[i];
      quantidade++;
    }
  }
  media = media / quantidade;
  print(
      "A altura media entre as pessoas com mais de 50 anos é igual a: ${media.round()}cm");
}
