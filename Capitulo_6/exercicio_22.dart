//22 - Faça um programa que leia um vetor A de dez posições. Em seguida, compacte o
//vetor, retirando os valores nulos e negativos. Armazene esse resultado no vetor
//B. (Lembre-se: o vetor B pode não ser completamente preenchido.)
void main(List<String> args) {
  List numeros = [1, 5, -6, null, 10, null, -99, -10, null, 20];
  List numerosB = List.filled(10, null, growable: true);
  numeros.removeWhere((valor) => valor == null || valor < 0);
  for (int i = 0; i < numeros.length; i++) {
    numerosB[i] = numeros[i];
  }
  print("Vetor B: $numerosB");
}
