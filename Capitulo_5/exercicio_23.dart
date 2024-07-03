//Faça um programa que apresente o menu de opções a seguir, que permita ao usuário
//escolher a opção desejada, receba os dados necessários para executar a operação
//e mostre o resultado. Verifique a possibilidade de opção inválida e não se
//preocupe com as restrições como salário inválido.
//Menu de opções: 1 - Novo salário, 2 - Férias, 3 - Décimo terceiro, 4 - sair
import 'dart:io';

double novoSalario = 0;
void main(List<String> args) {
  print(
      "Escolha as opções:\n1 - Novo salário\n2 - Férias\n3 - Décimo terceiro\n4 - sair");
  String opcoes = stdin.readLineSync()!;
  while (opcoes != "4") {
    switch (opcoes) {
      case "1":
        print("Digite o salário do funcionário");
        double salario = double.parse(stdin.readLineSync()!);
        calcularNovoSalario(salario);
        break;
      case "2":
        print("Digite o salário do funcionário");
        double salario = double.parse(stdin.readLineSync()!);
        calcularSalarioFerias(salario);
        break;
      case "3":
        print("Digite o salário do funcionário");
        double salario = double.parse(stdin.readLineSync()!);
        print("Digite quantos meses o funcionário trabalhou: ");
        int meses = int.parse(stdin.readLineSync()!);
        if (meses > 12) {
          print("Máximo de 12 meses");
          continue;
        } else {
          calcularDecimoTerceiro(salario, meses);
        }
    }
    print(
        "Escolha as opções:\n1 - Novo salário\n2 - Férias\n3 - Décimo terceiro\n4 - sair");
    opcoes = stdin.readLineSync()!;
  }
}

void calcularNovoSalario(double salario) {
  double porcentagemAumento = 0;
  if (salario < 210) {
    porcentagemAumento = 0.15;
  } else if (salario >= 210 && salario <= 600) {
    porcentagemAumento = 0.1;
  } else {
    porcentagemAumento = 0.05;
  }
  novoSalario = salario + (salario * porcentagemAumento);
  print("Novo salário do funcionario: ${novoSalario.toStringAsFixed(2)}");
}

void calcularSalarioFerias(double salario) {
  novoSalario = salario + (salario / 3);
  print("O salário de ferias sera: ${novoSalario.toStringAsFixed(2)}");
}

void calcularDecimoTerceiro(double salario, int meses) {
  novoSalario = (salario * meses) / 12;
  print(
      "O décimo terceiro do funcionário é igual a: ${novoSalario.toStringAsFixed(2)}");
}
