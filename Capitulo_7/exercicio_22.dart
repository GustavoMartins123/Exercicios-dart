//22 - Faça um programa que preencha uma matriz 3x4, calcule e mostre:
//a quantidade de elementos pares
//a soma dos elementos ímpares
//a média de todos os elementos
void main(List<String> args) {
  List<List<int>> matriz = List.generate(
      3,
      (index) => List.generate(
          4, (indexB) => index % 2 == 0 ? index++ : index * indexB));
  int qtdPares = 0;
  int qtdNumeros = 0;
  int somaImpares = 0;
  double mediaTodos = 0;
  for (var i = 0; i < matriz.length; i++) {
    for (var j = 0; j < matriz[i].length; j++) {
      qtdNumeros = matriz.length * matriz[i].length;
      if (matriz[i][j] % 2 == 0) {
        qtdPares++;
      } else if (matriz[i][j] % 3 == 0 || matriz[i][j] == 1) {
        somaImpares += matriz[i][j];
      }
      mediaTodos += matriz[i][j];
    }
  }
  mediaTodos = mediaTodos / qtdNumeros;
  print("Quantidade de pares: $qtdPares\nSoma dos numeros ímpares: "
      "$somaImpares\nMedia total: ${mediaTodos.toStringAsFixed(2)}");
}
