//24 - Faça um programa que receba um conjunto de valores inteiros e positivos,
//calcule e mostre o maior e o menor valor do conjunto. Considere que:
// Para encerrar digite 0
// Para valores negativos, deve ser enviada uma mensagem
// Os valores negativos ou iguais a zero não entrarão nos cálculos
import 'dart:io';
import 'dart:math';

List<int> numeros = [];
void main(List<String> args) {
  print("Digite um numero positivo: ");
  int numero = int.parse(stdin.readLineSync()!);
  while (numero != 0) {
    if (numero < 0) {
      print("Entrada inválida, digite novamente");
      print("Digite um numero positivo: ");
      numero = int.parse(stdin.readLineSync()!);
    } else {
      print("Numero adicionado, para encerrar digite 0");
      numeros.add(numero);
    }
    print("Digite um numero positivo: ");
    numero = int.parse(stdin.readLineSync()!);
  }
  int maiorNumero = numeros.reduce(max);
  int menorNumero = numeros.reduce(min);
  print("O maior valor do conjunto é: $maiorNumero\n"
      "O menor valor do conjunto é: $menorNumero");
}
