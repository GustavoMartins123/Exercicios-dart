//24 - Faça um programa que receba a temperatura média de cada mês do ano e
//armazene-as em um vetor. O programa deverá calcular e mostrar a maior e a
//menor temperatura do ano, justamente com o mês em que elas ocorreram(O mês
//deverá ser mostrador por extenso: 1 = janeiro, 2 = fevereiro,...)
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  Map<int, String> meses = {
    1: "janeiro",
    2: "fevereiro",
    3: "março",
    4: "abril",
    5: "maio",
    6: "junho",
    7: "julho",
    8: "agosto",
    9: "setembro",
    10: "outubro",
    11: "novembro",
    12: "dezembro"
  };
  List<int> temperaturaMedia = [];
  for (var i = 0; i < 12; i++) {
    stdout.write("Digite a temperatura média do mês ${i + 1}: ");
    int temperatura = int.parse(stdin.readLineSync()!);
    temperaturaMedia.add(temperatura);
  }
  int maiorTemperatura = temperaturaMedia.reduce(max);
  int menorTemperatura = temperaturaMedia.reduce(min);
  int mesMaiorTemp = 0;
  int mesMenorTemp = 0;
  for (var i = 0; i < temperaturaMedia.length; i++) {
    if (temperaturaMedia[i] == maiorTemperatura) {
      mesMaiorTemp = i + 1;
    }
    if (temperaturaMedia[i] == menorTemperatura) {
      mesMenorTemp = i + 1;
    }
  }
  print(
      "A maior temperatura foi registrada no mês $mesMaiorTemp = ${meses[mesMaiorTemp]}, medindo: $maiorTemperatura graus.\nA menor temperatura foi registrada no mês $mesMenorTemp = ${meses[mesMenorTemp]}, medindo: $menorTemperatura graus.");
}
