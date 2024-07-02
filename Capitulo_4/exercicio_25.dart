//25 - Uma empresa decidiu dar uma gratificação de natal a seus funcionários,
//baseada no número de horas extras e no número de horas que o funcionário faltou
//ao trabalho. O valor do prêmio é obtido pela consulta à tabela que segue,
//na qual:
//H = números de horas extras - (2/3 * (numero de horas-falta))
import 'dart:io';

void main(List<String> args) {
  print("Digite o numero de horas extras: ");
  int horasExtra = int.parse(stdin.readLineSync()!);
  print("Digite o numero de horas faltando: ");
  int horasFaltando = int.parse(stdin.readLineSync()!);
  calcularBonificacao(horasExtra, horasFaltando);
}

void calcularBonificacao(int horasExtra, int horasFaltando) {
  double premio = 0;
  double minutos = (horasExtra * 60) - (2 / 3 * (horasFaltando * 60));
  print("Quantidade de minutos extra: ${minutos.round()}");
  if (minutos > 0) {
    if (minutos < 600) {
      premio = 100.00;
    } else if (minutos >= 600 && minutos < 1200) {
      premio = 200.00;
    } else if (minutos >= 1200 && minutos < 1800) {
      premio = 300.00;
    } else if (minutos >= 1800 && minutos < 2400) {
      premio = 400.00;
    } else {
      premio = 500.00;
    }
  } else {
    premio = 0;
  }
  print("Bonificação do funcionário: $premio");
}
