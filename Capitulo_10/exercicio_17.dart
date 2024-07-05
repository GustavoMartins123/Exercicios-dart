//17 - Um banco está informatizando seus controles de clientes e contas. Sobre
//cada cliente dispôe-se dos seguintes dados; nome, idade, endereço, número de
//suas contas(15 no máximo) e CGC. As contas válidas têm número diferente de zero.
//Cada conta possui um só cliente. As informações das contas são as seguintes:
//número da conta, cliente e saldo atual. (Se existem 12 clientes com quatro
//contas no máximo, então devem existir 48 contas.)
//Crie um programa que:
//a)Cadastre os clientes e suas contas
//b)Mostre todas as contas cadastradas
//c)Mostre todas as contas de determinado cliente(identificadas pelo código)
//d)Mostre o somatório das contas de determinado cliente
//e)Mostre todas as contas com saldo negativo
//f)Mostre o ativo bancário(soma de todos os saldos)
import 'dart:io';

class Conta {
  int codigoCliente;
  int numeroConta;
  double saldo;

  Conta(this.codigoCliente, this.numeroConta, this.saldo);
}

List<String> opcoes = [
  "Cadastrar cliente",
  "Mostrar contas cadastradas",
  "Mostrar contas do cliente",
  "Mostrar saldo total do cliente",
  "Mostrar contas com saldo negativo",
  "Mostrar saldo total do banco",
  "Sair"
];
void main() {
  List<Conta> contas = [];
  int opcao = 0;
  while (opcao != 7) {
    for (var i = 0; i < opcoes.length; i++) {
      print("${i + 1} - ${opcoes[i]}");
    }
    stdout.write("Escolha uma opção: ");
    opcao = int.parse(stdin.readLineSync()!);
    if (opcao == 7) {
      break;
    } else if (opcao < 0 || opcao > opcoes.length) {
      print("Código inválido, tente novamente");
      continue;
    }
    switch (opcao) {
      case 1:
        cadastrarConta(contas);
        break;
      case 2:
        mostrarTodasContas(contas);
        break;
      case 3:
        mostrarContasCliente(contas);
        break;
      case 4:
        mostrarSomatorioContasCliente(contas);
        break;
      case 5:
        mostrarContasSaldoNegativo(contas);
        break;
      case 6:
        mostrarAtivoBancario(contas);
    }
  }
}

void cadastrarConta(List<Conta> contas) {
  stdout.write("Código do cliente: ");
  int codigoCliente = int.parse(stdin.readLineSync()!);

  stdout.write("Número da conta: ");
  int numeroConta = int.parse(stdin.readLineSync()!);

  stdout.write("Saldo inicial: ");
  double saldoInicial = double.parse(stdin.readLineSync()!);

  Conta novaConta = Conta(codigoCliente, numeroConta, saldoInicial);
  contas.add(novaConta);
}

void mostrarTodasContas(List<Conta> contas) {
  if (contas.isEmpty) {
    print("Nenhuma conta cadastrada.");
  } else {
    for (var conta in contas) {
      print(
          "Cliente ${conta.codigoCliente} - Conta ${conta.numeroConta}: Saldo ${conta.saldo.toStringAsFixed(2)}");
    }
  }
}

void mostrarContasCliente(List<Conta> contas) {
  stdout.write("Digite o código do cliente: ");
  int codigoCliente = int.parse(stdin.readLineSync()!);

  bool encontrou = false;
  for (var conta in contas) {
    if (conta.codigoCliente == codigoCliente) {
      encontrou = true;
      print(
          "Conta ${conta.numeroConta}: Saldo ${conta.saldo.toStringAsFixed(2)}");
    }
  }

  if (!encontrou) {
    print("Cliente não encontrado ou não possui conta cadastrada.");
  }
}

void mostrarSomatorioContasCliente(List<Conta> contas) {
  stdout.write("Digite o código do cliente: ");
  int codigoCliente = int.parse(stdin.readLineSync()!);

  double somatorio = 0;
  bool encontrou = false;
  for (var conta in contas) {
    if (conta.codigoCliente == codigoCliente) {
      encontrou = true;
      somatorio += conta.saldo;
    }
  }

  if (encontrou) {
    print(
        "Somatório das contas do Cliente $codigoCliente: ${somatorio.toStringAsFixed(2)}");
  } else {
    print("Cliente não encontrado ou não possui contas cadastradas.");
  }
}

void mostrarContasSaldoNegativo(List<Conta> contas) {
  bool encontrou = false;
  for (var conta in contas) {
    if (conta.saldo < 0) {
      encontrou = true;
      print(
          "Cliente ${conta.codigoCliente} - Conta ${conta.numeroConta}: Saldo ${conta.saldo.toStringAsFixed(2)}");
    }
  }

  if (!encontrou) {
    print("Não há contas com saldo negativo.");
  }
}

void mostrarAtivoBancario(List<Conta> contas) {
  double ativoBancario = 0;
  for (var conta in contas) {
    ativoBancario += conta.saldo;
  }
  print("Ativo bancário: ${ativoBancario.toStringAsFixed(2)}");
}
