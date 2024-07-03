//21 - Crie um programa que preencha uma matriz 6x10, some as colunas individualmente
//e acumule as somas na sétima linha da matriz. O programa deverá mostrar o
//resultado de cada coluna.
void main(List<String> args) {
  List<List<int>> matriz = List.generate(
      7, (index) => List.generate(10, (indexB) => index + indexB));
  print(matriz);
  for (var i = 0; i < matriz.length - 1; i++) {
    for (var j = 0; j < matriz[i].length; j++) {
      matriz[6][j] += matriz[i][j];
    }
  }
  for (var i = 0; i < 10; i++) {
    print("Soma da coluna ${i + 1}: ${matriz[6][i]}");
  }
}
