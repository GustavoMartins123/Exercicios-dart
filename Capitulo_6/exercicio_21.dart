//21 - Faça um programa que leia um vetor com trinta posições para números inteiros.
//Crie um segundo vetor, substituindo os valores nulos por 1. Mostre os dois vetores.
void main(List<String> args) {
  List<int> numeros = [];
  List numerosNulos = List.filled(30, []);
  for (var i = 0; i < numerosNulos.length; i++) {
    numeros.add(i);
    numerosNulos[i] = 1;
  }

  print("Vetor 1: $numeros\nVetor 2: $numerosNulos");
}
