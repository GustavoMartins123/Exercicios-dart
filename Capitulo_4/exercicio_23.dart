//23 - Faça um programa que receba:
//O código do produto comprado
//A quantidade comprada do produto
//Calcule e mostre:
import 'dart:io';

void main(List<String> args) {
  print("Digite o codigo do produto: ");
  int codigo = int.parse(stdin.readLineSync()!);
  if (verificarCodigo(codigo)) {
    print("Codigo inválido");
    return;
  }
  print("Digite a quantidade do produto: ");
  int quantidadeProduto = int.parse(stdin.readLineSync()!);
  calcularPreco(codigo, quantidadeProduto);
}

void calcularPreco(int codigo, int quantidadeProduto) {
  double preco = 0;
  if (codigo <= 0 || codigo > 40) {
    print("Código inválido");
    return;
  }
  if (codigo > 0 && codigo < 11) {
    preco = 10;
  } else if (codigo > 10 && codigo < 21) {
    preco = 15;
  } else if (codigo > 20 && codigo < 31) {
    preco = 20;
  } else{
    preco = 30;
  }
  //  O preço unitário do produto comprado, seguindo a Tabela I
  print("Preço unitário do produto: $preco");
  //  O preço total da nota
  double precoTotal = preco * quantidadeProduto;
  print("Preço total da nota: $precoTotal");
  //  O valor do desconto, seguindo a Tabela II e aplicado sobre o preço
  //total da nota
  double desconto = 0;
  if (precoTotal > 0) {
    if (precoTotal <= 250) {
      desconto = 0.05;
    } else if (precoTotal > 250 && precoTotal < 501) {
      desconto = 0.1;
    } else {
      desconto = 0.15;
    }
    print("Valor do desconto: ${desconto * 100}%");
    //  O preço final da nota depois do desconto.
    double precoFinal = precoTotal - (precoTotal * desconto);
    print("Preço final com desconto: $precoFinal");
  }
}

bool verificarCodigo(int codigo) {
  return codigo < 1 || codigo > 40;
}
