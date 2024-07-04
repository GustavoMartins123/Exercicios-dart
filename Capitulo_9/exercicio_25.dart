//25 - Faça um programa que receba uma frase e faça a criptografia, retirando
//das palavras suas vogais. O programa deverá armazenar estas vogais e suas
//posições originais em vetores, mostrar a frase criptografada e posteriormente
//descriptografá-la
import 'dart:io';

void main(List<String> args) {
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
  List<String> vogaisRemovidas = [];
  List<int> pos = [];
  stdout.write("Digite uma frase para criptografar: ");
  String frase = stdin.readLineSync()!.toLowerCase();
  List<String> letras = frase.split("");
  for (int i = 0; i < letras.length; i++) {
    String letra = letras[i];
    if (vogais.contains(letra)) {
      vogaisRemovidas.add(letra);
      pos.add(i);
      letras[i] = "";
    }
  }
  String fraseCriptografada = letras.join("");
  print("Frase criptografada: $fraseCriptografada");

  for (int i = 0; i < pos.length; i++) {
    int posicao = pos[i];
    letras[posicao] = vogaisRemovidas[i];
  }
  String fraseDescriptografada = letras.join("");
  print("Frase descriptografada: $fraseDescriptografada");
}
