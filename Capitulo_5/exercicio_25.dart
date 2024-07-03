//25 - Uma agência bancária possui vários clientes que podem fazer investimentos
//com rendimentos mensais, conforme a tabela a seguir:
//Tipo    Descrição             Rendimento mensal
// 1      Poupança                  1,5%
// 2      Poupança plus             2%
// 3      Fundos de renda fixa      4%
import 'dart:io';

double rendimento = 0;
void main(List<String> args) {
  print("Digite seu código:");
  int codigo = int.parse(stdin.readLineSync()!);
  print("Digite o tipo de investimento:");
  int tipoDoInvestimento = int.parse(stdin.readLineSync()!);
  print("Digite o valor investido:");
  double valorInvestido = double.parse(stdin.readLineSync()!);
  while (codigo > 0) {
    switch (tipoDoInvestimento) {
      case 1:
        rendimento = 0.015;
        break;
      case 2:
        rendimento = 0.02;
        break;
      case 3:
        rendimento = 0.04;
    }
    calcularGanhos(valorInvestido);
    print("Digite seu código:");
    codigo = int.parse(stdin.readLineSync()!);
  }
}

void calcularGanhos(double valorInvestido) {
  double rendimentoMensal = valorInvestido * rendimento;
  print("O rendimento mensal equivale a: ${rendimento * 100}%");
  print("Total investido equivale a: $valorInvestido");
  double jurosTotal = valorInvestido;
  for (var i = 0; i < 12; i++) {
    rendimentoMensal = valorInvestido * rendimento;
    valorInvestido += rendimentoMensal;
  }
  jurosTotal -= valorInvestido;
  print(
      "Total de juros pagos em 12 meses equivale: ${jurosTotal.abs().toStringAsFixed(2)}\nPara encerrar digite 0");
}
