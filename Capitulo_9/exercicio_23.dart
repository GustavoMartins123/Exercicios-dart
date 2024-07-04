//23 - A busca por subcadeias dentro de grandes cadeias de caracteres é um problema
//clássico na computação, especificamente em bancos de dados. Faça um programa que
//receba uma cadeia de caracteres e uma subcadeia, determine e mostre quantas
//vezes a subcadeia aparece dentro da cadeia.
//*O Tamanho da subcadeia obrigatoriamente deve ser menor que o da cadeia.
import 'dart:io';

void main(List<String> args) {
  stdout.write("Digite a cadeia de caracteres: ");
  String cadeia = stdin.readLineSync()!.trim();

  stdout.write("Digite a subcadeia a ser procurada: ");
  String subcadeia = stdin.readLineSync()!.trim();

  if (subcadeia.length >= cadeia.length) {
    print("O tamanho da subcadeia deve ser menor que o da cadeia.");
    return;
  }
  int count = 0;
  for (int i = 0; i <= cadeia.length - subcadeia.length; i++) {
    if (cadeia.substring(i, i + subcadeia.length) == subcadeia) {
      count++;
    }
  }

  print("A subcadeia '$subcadeia' aparece $count vezes na cadeia '$cadeia'.");
}
