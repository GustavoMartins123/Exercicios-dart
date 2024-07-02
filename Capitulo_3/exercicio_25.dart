//25 - Faça um programa que receba uma hora (uma variável para hora e outra
//para minutos), calcule e mostre:

import 'dart:io';

void main(List<String> args) {
  print("Digite a hora: ");
  int horaDigitada = int.parse(stdin.readLineSync()!);
  print("Digite os minutos");
  int minutosDigitados = int.parse(stdin.readLineSync()!);
  calcularTempo(horaDigitada, minutosDigitados);
}

void calcularTempo(int horaDigitada, int minutosDigitados) {
  //a) a hora digitada convertida em minutos
  int horaMinuto = horaDigitada * 60;
  print("A hora convertida em minutos: $horaMinuto minutos");
  int totalMinutos = horaMinuto + minutosDigitados;
  print("Total de minutos: $totalMinutos minutos");
  int minutosSegundos = totalMinutos * 60;
  print("Total de segundos: $minutosSegundos segundos");
}
