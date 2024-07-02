//22 - Faça um programa que receba a idade e o peso de uma pessoa. De acordo com
//a tabela a seguir, verifique e mostre em qual grupo de risco essa pessoa se
//encaixa.
import 'dart:io';

int risco = 0;
void main(List<String> args) {
  print("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);
  print("Digite seu peso: ");
  int peso = int.parse(stdin.readLineSync()!);
  grupoDeRisco(idade, peso);
}

void grupoDeRisco(int idade, int peso) {
  if (idade < 20) {
    switch (peso) {
      case < 61:
        risco = 9;
        break;
      case 61 && < 91:
        risco = 8;
        break;
      case > 90:
        risco = 7;
    }
  } else if (idade > 19 && idade < 51) {
    switch (peso) {
      case < 61:
        risco = 6;
        break;
      case 61 && < 91:
        risco = 5;
        break;
      case > 90:
        risco = 4;
    }
  } else {
    switch (peso) {
      case < 61:
        risco = 3;
        break;
      case 61 && < 91:
        risco = 2;
        break;
      case > 90:
        risco = 1;
    }
  }
  print("Idade: $idade\nPeso: $peso\nParticipa do grupo de risco: $risco");
}
