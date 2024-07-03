//23 - Elabore um programa que preencha uma matriz 4x5, calcule e mostre um vetor com
//cinco posições, onde cada posição contém a soma dos elementos de cada coluna
//da matriz. O programa deverá mostrar apenas os elementos do vetor maiores que
//dez. Se não existir nenhum elemento maior que dez, deverá mostrar uma mensagem.
void main(List<String> args) {
  List<List<int>> matriz = List.generate(
      4,
      (index) => List.generate(
          5, (indexB) => index % 3 == 0 ? index++ : index + indexB));
  List<int> vetor = List.filled(5, 0, growable: true);
  for (var i = 0; i < matriz.length; i++) {
    for (var j = 0; j < matriz[i].length; j++) {
      vetor[j] += matriz[i][j];
    }
  }
  int qtdMaiores = 0;
  for (var i = 0; i < vetor.length; i++) {
    if (vetor[i] > 10) {
      qtdMaiores++;
    } else {
      vetor.removeAt(i);
    }
  }
  if (qtdMaiores == 0) {
    print("Não existe nenhum valor maior do que 10");
  } else {
    print(vetor);
  }
}
