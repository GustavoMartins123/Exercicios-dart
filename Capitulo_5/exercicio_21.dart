//Em uma eleição presidencial existem quatro candidatos. Os votos são informados
//por meio de código. Os códigos utilizados são:
//1,2,3,4 votos para respectivos candidatos
//5 votos nulo e 6 voto em branco
import 'dart:io';

List<int> votos = [0, 0, 0, 0, 0, 0]; // 0 ao 3 são os candidatos
//4 voto nulo e 5 voto em branco
int totalVotos = 0;
void main(List<String> args) {
  print("Digite o código do voto: ");
  int codigoVoto = int.parse(stdin.readLineSync()!);
  if (codigoVoto >= 0 && codigoVoto < 6) {
    votos[codigoVoto]++;
  } else {
    print("Código inválido");
    return;
  }
  totalVotos++;
  print("Você votou no candito numero: $codigoVoto");

  print("Continuar Votando? s/n");
  String votar = stdin.readLineSync()!;
  while (votar == "s") {
    print("Digite o código do voto: ");
    codigoVoto = int.parse(stdin.readLineSync()!);
    if (codigoVoto >= 0 && codigoVoto < 6) {
      votos[codigoVoto]++;
    } else {
      print("Código inválido");
      return;
    }
    totalVotos++;
    print("Você votou no candito numero: $codigoVoto");
    print("Continuar Votando? s/n");
    votar = stdin.readLineSync()!;
  }
  calcularVotos(codigoVoto);
}

void calcularVotos(int codigoVoto) {
  for (var i = 0; i < 4; i++) {
    print("Votos no candidato numero: ${i + 1} com ${votos[i]} votos");
  }
  print("Quantidade de votos nulos: ${votos[4]}\n"
      "Quantidade de votos em branco: ${votos[5]}");
  int votosNulos = votos[4];
  double porcentagemNulo = (votosNulos * 100) / totalVotos;

  print("Porcentagem de votos nulos: ${porcentagemNulo.round()}%");
  int votosEmBranco = votos[5];
  double porcentagemBranco = (votosEmBranco * 100) / totalVotos;
  print("Porcentagem de votos em branco: ${porcentagemBranco.round()}%");
}
