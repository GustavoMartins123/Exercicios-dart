//25 - Faça um programa que receba os preços de vinte produtos em cinco lojas
//diferentes e armazene-os em uma matriz 20x5. Desconsiderando empates, o programa
//deverá mostrar o número do produto e o número da loja do produto mais caro.
import 'dart:io';

void main(List<String> args) {
  List<List<double>> precos =
      List.generate(5, (index) => List<double>.filled(20, 0));
  int produtoMaisCaro = 0;
  int numeroDaLoja = 0;
  for (int i = 0; i < precos.length; i++) {
    for (int j = 0; j < precos[i].length; j++) {
      stdout.write("Digite o preço do Produto ${j + 1} na Loja ${i + 1}: ");
      double preco = double.parse(stdin.readLineSync()!);
      precos[i][j] = preco;
      if (precos[i][j] > produtoMaisCaro) {
        produtoMaisCaro = j;
        numeroDaLoja = i;
      }
    }
  }
  print(
      "O produto mais caro é o: $produtoMaisCaro\nE fica na loja: $numeroDaLoja");
}
