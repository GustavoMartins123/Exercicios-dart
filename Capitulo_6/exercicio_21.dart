//21 - Faça um programa que leia um vetor com trinta posições para números inteiros.
//Crie um segundo vetor, substituindo os valores nulos por 1. Mostre os dois vetores.
void main(List<String> args) {
  List<int> numeros = [];
  List numerosNulos =
      List.generate(30, (index) => index % 2 == 0 ? null : index + 2);
  for (var i = 0; i < numerosNulos.length; i++) {
    numeros.add(i);
    if (numerosNulos[i] == null) {
      numerosNulos[i] = 1;
    }
  }

  print("Vetor 1: $numeros\nVetor 2: $numerosNulos");
}
