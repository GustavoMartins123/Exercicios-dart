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
  switch (codigoOrigem) {
    case 1:
      mensagem = procedenciaProduto[0];
      break;
    case 2:
      mensagem = procedenciaProduto[1];
      break;
    case 3:
      mensagem = procedenciaProduto[2];
      break;
    case 4:
      mensagem = procedenciaProduto[3];
      break;
    case 5 || 6:
      mensagem = procedenciaProduto[4];
      break;
    case 7 || 8 || 9:
      mensagem = procedenciaProduto[5];
      break;
    case 10 && < 21:
      mensagem = procedenciaProduto[6];
      break;
    case 21 && < 31:
      mensagem = procedenciaProduto[4];
  }
  if (codigoOrigem < 1 || codigoOrigem > 30) {
    print("Codigo inválido");
    return;
  }
  print("Preço do produto: $precoProduto\nProcedência: $mensagem");
}
