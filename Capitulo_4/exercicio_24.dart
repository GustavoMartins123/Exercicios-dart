//24 - Faça um programa que receba o preço, a categoria(1 - Limpeza,
//2 - alimentação ou 3 - vestuário) e a situação (R - produtos que necessitam
//de refrigeração e N - Produtos que não necessitam de refrigeração).
//Calcule e mostre:
import 'dart:io';

void main(List<String> args) {
  print("Digite o preço do produto: ");
  double preco = double.parse(stdin.readLineSync()!);

  print(
      "Digite a categoria do produto 1: Limpeza, 2: Alimentação, 3: Vestuário");
  int categoria = int.parse(stdin.readLineSync()!);

  print("Digite a situação do produto, R - precisa de refrigeração ou"
      " N - não precisa de refrigeração");
  String situacao = stdin.readLineSync()!;

  calcularImposto(preco, categoria, situacao);
}

void calcularImposto(double preco, int categoria, String situacao) {
  double percentualAumento = 0;
  if (preco <= 25) {
    switch (categoria) {
      case 1:
        percentualAumento = 0.05;
        break;
      case 2:
        percentualAumento = 0.08;
        break;
      case 3:
        percentualAumento = 0.1;
    }
  } else {
    switch (categoria) {
      case 1:
        percentualAumento = 0.12;
        break;
      case 2:
        percentualAumento = 0.15;
        break;
      case 3:
        percentualAumento = 0.18;
    }
  }
  //O valor do aumento
  print("O valor do aumento: ${(percentualAumento * 100).toInt()}%");
  //O produto que preencher pelo menos um dos seguindos requisitos pagará imposto
  //equivalente a 5% do preço, caso contrário, pagara 8%. Os requisitos são:
  //Categoria: 2 - Situação: R
  double valorImposto = 0;
  if (categoria == 2 || situacao == "R") {
    valorImposto = 0.05;
  } else {
    valorImposto = 0.08;
  }
  print("Valor do imposto: ${valorImposto * 100}%");
  // O novo preço, ou seja, o preço mais aumento menos imposto.
  double novoPreco = preco + (preco * percentualAumento);
  print("Novo preço: $novoPreco");
  //A classificação:
  String classificacao = "";
  if (novoPreco <= 50) {
    classificacao = "Barato";
  } else if (novoPreco > 50 && novoPreco < 121) {
    classificacao = "Normal";
  } else {
    classificacao = "Caro";
  }
  print("Classificação atual: $classificacao");
}
