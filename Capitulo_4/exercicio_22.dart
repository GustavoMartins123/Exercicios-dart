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
    if (peso < 61) {
      risco = 9;
    } else if (peso > 60 && peso < 91) {
      risco = 8;
    } else {
      risco = 7;
    }
  } else if (idade > 19 && idade < 51) {
      if (peso < 61) {
        risco = 6;
      } else if (peso > 60 && peso < 91) {
        risco = 5;
      } else {
        risco = 4;
      }
  } else {
    if (peso < 61) {
      risco = 3;
    } else if (peso > 60 && peso < 91) {
      risco = 2;
    } else {
      risco = 1;
    }
  }
  print("Idade: $idade\nPeso: $peso\nParticipa do grupo de risco: $risco");
}
