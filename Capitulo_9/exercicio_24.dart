//24 - Faça um programa que receba um verbo regular terminando em 'ER' e mostre sua
//conjugação no presente.
//Exemplo:
//Verbo: Vender
//Eu vendo, Tu vendes, Ele vende, Ela vende, Nós vendemos, Vós vendeis, Eles
//vendem, Elas vendem.
import 'dart:io';

void main(List<String> args) {
  stdout.write("Digite um verbo regular terminado em 'ER': ");
  String verbo = stdin.readLineSync()!.trim();

  if (!verbo.endsWith('er')) {
    print("O verbo deve terminar em 'ER'.");
    return;
  }

  String palavra = verbo.substring(0, verbo.length - 2);

  print("");
  print("Conjugação no presente: \n"
      "Eu ${palavra}o, Tu ${palavra}es, Ele ${palavra}e, Ela ${palavra}e, Nós ${palavra}emos, Vós ${palavra}eis, Eles ${palavra}em, Elas ${palavra}em.");
}
