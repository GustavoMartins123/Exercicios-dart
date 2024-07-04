//21 - Faça um programa que receba uma frase e realize a criptografia dela,
//trocando a primeira e a última palavra de lugar.
import 'dart:io';

void main(List<String> args) {
  stdout.write("Digite uma frase para criptografar: ");
  String frase = stdin.readLineSync()!;
  List<String> palavras = frase.split(" ");
  if (palavras.length < 2) {
    print("A palavra precisa ter pelo menos 2 palavras");
    return;
  }
  String primeiraPalavra = palavras.first;
  String ultimaPalavra = palavras.last;
  palavras[0] = ultimaPalavra;
  palavras[palavras.length - 1] = primeiraPalavra;

  String fraseCriptografada = palavras.join(" ");

  print("Frase criptografada: $fraseCriptografada");
}
