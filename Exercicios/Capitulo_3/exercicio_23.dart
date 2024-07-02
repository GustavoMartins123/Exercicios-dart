//23 - Faça um programa que receba a medida de dois ângulos de um triangulo,
//calcule e mostre a media do terceiro ângulo. Sabe-se que a soma dos ângulos
//de um triângulo é 180 graus.
import 'dart:io';

void main(List<String> args) {
  print("Digite o angulo 1: ");
  int angulo1 = int.parse(stdin.readLineSync()!);
  print(angulo1);
  print("Digite o angulo 2: ");
  int angulo2 = int.parse(stdin.readLineSync()!);
  calcularAngulo(angulo1, angulo2);
}

void calcularAngulo(int angulo1, int angulo2) {
  int valorMaximo = 180;
  int angulo3 = angulo1 + angulo2 - valorMaximo;
  print("Angulo 3 vale: ${angulo3.abs()}");
}
