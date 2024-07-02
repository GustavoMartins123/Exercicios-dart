//21 - Faça um programa que receba um numero de horas trabalhadas,
//o valor do salário minimo e o numero de horas extras trabalhadas,
//calcule e mostre o salário a receber, seguindo as regras abaixo:
import 'dart:io';

void main() {
  print("Digite as horas trabalhadas: ");
  int horasTrabalhadas = int.parse(stdin.readLineSync()!);
  print("Digite o valor do salário mínimo: ");
  double salarioMinimo = double.parse(stdin.readLineSync()!);
  print("Digite as horas extras trabalhadas: ");
  int horaExtra = int.parse(stdin.readLineSync()!);

  calcularValores(horasTrabalhadas, salarioMinimo, horaExtra);
}

void calcularValores(
    int horasTrabalhadas, double salarioMinimo, int horaExtra) {
  //a) a hora trabalhada vale 1/8 do salário mínimo
  double valorHoraTrabalhada = salarioMinimo / 8;
  print("Valor por hora trabalhada: $valorHoraTrabalhada");
  //b) a hora extra vale 1/4 do salário mínimo
  double valorHoraExtra = salarioMinimo / 4;
  print("Valor por hora extra trabalhada: $valorHoraExtra");
  //c) o salário bruto equivale ao número de horas trabalhadas multiplicado
  //pelo valor da hora trabalhada
  double salarioBruto = horasTrabalhadas * valorHoraTrabalhada;
  print("Valor do salario bruto: $salarioBruto");
  //d) a quantia a receber pelas horas extras equivale ao número de horas extras
  //trabalhadas multiplicado pelo valor da hora extra
  double quantiaRecerExtra = horaExtra * valorHoraExtra;
  print("Valor a receber das horas extras: $quantiaRecerExtra");
  //e) o salário a receber equivale ao salário bruto mais a quantia pelas
  // horas extras
  double salarioReceber = salarioBruto + quantiaRecerExtra;
  print("Valor do salario a receber: $salarioReceber");
}
