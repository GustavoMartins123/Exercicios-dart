//25 - Crie um programa que receba o nome dos 30 alunos de uma sala,
//armazenando-os em um vetor, juntamente com as notas obtidas ao longo
//do semestre(foram realizadas quatro avaliações). Elabore sub-rotinas para:
//Determinar e mostrar a média aritmética de todos os alunos.
//Indicar os nomes dos alunos que deverão fazer recuperação, ou seja, aqueles
//com média inferior a 6.
import 'dart:io';

void main(List<String> args) {
  List<String> nomesAlunos = [];
  List<List<int>> notasAlunos = [];
  for (var i = 0; i < 30; i++) {
    stdout.write("Digite o nome do aluno:");
    String nomeAluno = stdin.readLineSync()!;
    nomesAlunos.add(nomeAluno);
    List<int> notas = [];
    for (var j = 0; j < 4; j++) {
      stdout.write("Digite a nota da prova numero ${j + 1}: ");
      int notaProva = int.parse(stdin.readLineSync()!);
      notas.add(notaProva);
    }
    notasAlunos.add(notas);
  }
  mostrarMediaAlunos(nomesAlunos, notasAlunos);
  mostrarAlunosRecuperacao(nomesAlunos, notasAlunos);
}

void mostrarMediaAlunos(List<String> nomes, List<List<int>> notas) {
  for (var i = 0; i < nomes.length; i++) {
    double media = 0;
    for (var nota in notas[i]) {
      media += nota;
    }
    media /= notas[i].length;
    print("Aluno ${nomes[i]} ficou com a média: ${media.toStringAsFixed(1)}");
  }
}

void mostrarAlunosRecuperacao(List<String> nomes, List<List<int>> notas) {
  print("\nAlunos em recuperação:");
  for (var i = 0; i < nomes.length; i++) {
    double somaNotas = 0;
    for (var nota in notas[i]) {
      somaNotas += nota;
    }
    double media = somaNotas / notas[i].length;
    if (media < 6) {
      print("${nomes[i]} com média: ${media.toStringAsFixed(1)}");
    }
  }
}
