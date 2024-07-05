//20 - Faça um programa contendo os serviços que uma oficina mecânica pode
//realizar: ordem de serviço(número da OS, data, valor, serviço realizado, cliente).
//Leia as informações sobre várias ordens de serviço e determine, ao final, a
// média dos valores, o nome do cliente que realizou o serviço mais caro,
// juntamente com a descrição desse serviço e a data de sua realização.

import 'dart:io';

class OrdemServico {
  int numeroOS;
  String data;
  double valor;
  String servicoRealizado;
  String cliente;

  OrdemServico(this.numeroOS, this.data, this.valor, this.servicoRealizado,
      this.cliente);
}

List<String> servicosDisponiveis = [
  "Troca de óleo",
  "Alinhamento e balanceamento",
  "Revisão de motor",
  "Troca de pneus",
  "Troca de pastilhas de freio",
  "Reparo de suspensão",
  "Sair"
];
void main() {
  List<OrdemServico> ordens = [];

  int escolhaServico = -1;
  while (escolhaServico != 7) {
    print("\nMenu de Serviços: ");
    for (int i = 0; i < servicosDisponiveis.length; i++) {
      print("${i + 1}. ${servicosDisponiveis[i]}");
    }

    stdout.write("Escolha um serviço (0-${servicosDisponiveis.length}): ");
    escolhaServico = int.parse(stdin.readLineSync()!);

    if (escolhaServico == 7) {
      break;
    } else if (escolhaServico < 0 ||
        escolhaServico > servicosDisponiveis.length) {
      print("Código inválido, tente novamente");
      continue;
    }

    print("\nCadastrando Serviço: ");

    stdout.write("Número da OS: ");
    int numOS = int.parse(stdin.readLineSync()!);

    stdout.write("Data da OS (dd/mm/aaaa): ");
    String data = stdin.readLineSync()!;

    stdout.write("Valor da OS: ");
    double valor = double.parse(stdin.readLineSync()!);

    String servicoRealizado = servicosDisponiveis[escolhaServico - 1];

    stdout.write("Nome do cliente: ");
    String cliente = stdin.readLineSync()!;

    OrdemServico os =
        OrdemServico(numOS, data, valor, servicoRealizado, cliente);
    ordens.add(os);

    print("Serviço cadastrado com sucesso!\n");
  }

  if (ordens.isEmpty) {
    print("Nenhum serviço cadastrado.");
    return;
  }

  double somaValores = 0.0;
  for (var os in ordens) {
    somaValores += os.valor;
  }
  double mediaValores = somaValores / ordens.length;

  double maiorValor = 0.0;
  String clienteMaisCaro = "";
  String descricaoMaisCara = "";
  String dataMaisCara = "";
  for (var os in ordens) {
    if (os.valor > maiorValor) {
      maiorValor = os.valor;
      clienteMaisCaro = os.cliente;
      descricaoMaisCara = os.servicoRealizado;
      dataMaisCara = os.data;
    }
  }
  print("Média dos valores dos serviços: ${mediaValores.toStringAsFixed(2)}");
  print("Cliente que fez o serviço mais caro: $clienteMaisCaro");
  print("Descrição do serviço mais caro: $descricaoMaisCara");
  print("Data do serviço mais caro: $dataMaisCara");
}
