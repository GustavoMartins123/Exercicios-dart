//24 - Crie um programa que:
//Receba o preço de dez produtos e armazene-os em um vetor
//Receba a quantidade estocada de cada um desses produtos em cinco armazéns,
//utilizando uma matriz 5x10
//O programa deverá calcular e mostrar:
//A quantidade de produtos estocados em cada um dos armazéns
//A quantidade de cada um dos produtos estocados em todos os armazéns juntos
//O preço do produto que possui maior estoque em um único armazém
//O menor estoque armazenado
//O custo de cada armazém
import 'dart:io';

List<double> precos = [];
List<List<int>> armazem = List.generate(5, (index) => List<int>.filled(10, 0));
void main(List<String> args) {
  while (precos.length < 10) {
    print("Digite o preço do produto: ");
    double preco = double.parse(stdin.readLineSync()!);
    precos.add(preco);
  }
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write("Armazém ${i + 1}, Produto ${j + 1}: ");
      int quantidade = int.parse(stdin.readLineSync()!);
      armazem[i][j] = quantidade;
    }
  }
  qtdEstocados();

  int maxStock = 0;
  int indiceArmazem = 0;
  int indiceProduto = 0;

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      if (armazem[i][j] > maxStock) {
        maxStock = armazem[i][j];
        indiceArmazem = i;
        indiceProduto = j;
      }
    }
  }
  double precoMaiorEstoque = precos[indiceProduto];
  print("O produto com maior estoque em um único armazém é o "
      "Produto ${indiceProduto + 1} no Armazém ${indiceArmazem + 1}"
      " com preço de $precoMaiorEstoque");

  int minStock = armazem[0].reduce((a, b) => a + b);
  int indiceArmazemMenorEstoque = 0;
  for (int i = 1; i < 5; i++) {
    int totalStock = armazem[i].reduce((a, b) => a + b);
    if (totalStock < minStock) {
      minStock = totalStock;
      indiceArmazemMenorEstoque = i;
    }
  }

  print("O armazém com o menor estoque é o Armazém "
      "${indiceArmazemMenorEstoque + 1} com um total de $minStock unidades");

  for (int i = 0; i < 5; i++) {
    double custoTotal = 0;
    for (int j = 0; j < 10; j++) {
      custoTotal += armazem[i][j] * precos[j];
    }
    print("Custo do Armazém ${i + 1}: R\$${custoTotal.toStringAsFixed(2)}");
  }
}

void qtdEstocados() {
  for (int j = 0; j < 10; j++) {
    int totalQuantidadeProduto = 0;
    for (int i = 0; i < 5; i++) {
      totalQuantidadeProduto += armazem[i][j];
      print("Armazém ${i + 1}, Produto ${j + 1}: ${armazem[i][j]} unidades");
    }
    print("Total do Produto ${j + 1} em todos os armazéns:"
        "$totalQuantidadeProduto unidades");
  }
}
