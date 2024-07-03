//21 - Faça um programa que receba o preço de um produto e seu código de origem
//e mostre sua procedência. A procedência obedece à tabela a seguir.
//Codigo de origem 1 - Sul, 2 - Norte, 3 - Leste, 4 - Oeste, 5 ou 6 - Nordeste
//7, 8 ou 9 - Sudeste, 10 a 20 - Centro-oste, 21 a 30 - Nordeste
import 'dart:io';

void main(List<String> args) {
  print("Digite o preço do produto: ");
  double precoProduto = double.parse(stdin.readLineSync()!);
  print("Digite o codigo de origem: ");
  int codigoOrigem = int.parse(stdin.readLineSync()!);
  procedencia(precoProduto, codigoOrigem);
}

void procedencia(double precoProduto, int codigoOrigem) {
  List<String> procedenciaProduto = [
    "Sul",
    "Norte",
    "Leste",
    "Oeste",
    "Nordeste",
    "Sudeste",
    "Centro-Oeste",
    "Nordeste"
  ];
  String mensagem = "";
  if (codigoOrigem < 1 || codigoOrigem > 30) {
    print("Codigo inválido");
    return;
  }
  if (codigoOrigem == 1) {
    mensagem = procedenciaProduto[0];
  } else if (codigoOrigem == 2) {
    mensagem = procedenciaProduto[1];
  } else if (codigoOrigem == 3) {
    mensagem = procedenciaProduto[2];
  } else if (codigoOrigem == 4) {
    mensagem = procedenciaProduto[3];
  } else if (codigoOrigem == 5 || codigoOrigem == 6) {
    mensagem = procedenciaProduto[4];
  } else if (codigoOrigem == 7 || codigoOrigem == 8 || codigoOrigem == 9) {
    mensagem = procedenciaProduto[5];
  } else if (codigoOrigem > 9 || codigoOrigem < 21) {
    mensagem = procedenciaProduto[6];
  } else {
    mensagem = procedenciaProduto[4];
  }

  print("Preço do produto: $precoProduto\nProcedência: $mensagem");
}
