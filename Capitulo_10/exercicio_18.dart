//18 - Uma loja de eletrodomésticos está fazendo uma promoção entre seus 15 mil
//clientes. Todos os clientes que gastarem mais de R$5000,00 em compras passarão
//a ser considerados clientes vip, tendo 15% de desconto em todas as suas compras
//posteriores. Esse valor é cumulativo, mas precisa atingir R$5000,00 dentro de
//seis meses a partir da primeira compra ou será zerado. Faça um programa que:
//a)Cadastre os clientes dessa loja. Para cada cliente devem ser cadastrados:
//nome do cliente, CPF, RG, endereço, data da primeira compra, total gasto desde
//sua primeira compra e um campo que diz se o cliente é vip ou não. O campo que
//guarda o total gasto pelo cliente deve sempre iniciar com zero, e o campo em
//que diz se o cliente é vip deve começar com FALSO.
//b)Atualize o total gasto por determinado cliente. Deve-se ler um RG e, caso
//este seja encontrado na lista de clientes, deve-se entrar com um novo total
//gasto, deve-se fazer um teste para verificar se o valor chegou a R$5000,00.
//Em caso positivo, o cliente passará a ser vip. Esse teste só será realizado
//caso o cliente ainda não seja vip.
//c)Teste se o total gasto de cada cliente não-vip deve ser zerado. Se o tempo
//entre a data da primeira compra de um cliente e a data atual exceder seis
// meses, o total gasto por esse cliente deverá ser zerado. Lembre-se de que
// isso só vale para clientes não-vip.
import 'dart:io';

class Cliente {
  String nome;
  String cpf;
  String rg;
  String endereco;
  DateTime primeiraCompra;
  double _totalGasto = 0.0;
  bool _vip = false;

  Cliente(this.nome, this.cpf, this.rg, this.endereco, this.primeiraCompra);

  void atualizarTotalGasto(double novoTotal) {
    _totalGasto += novoTotal;
    if (!_vip && _totalGasto >= 5000.0) {
      _vip = true;
      print(
          "Por ter atingido um gasto igual ou superior a 5000, agora você é vip $nome");
    }
  }

  void verificarZerarTotalGasto(DateTime hoje) {
    if (!_vip) {
      DateTime seisMesesDepois = primeiraCompra.add(Duration(days: 180));
      if (hoje.isAfter(seisMesesDepois)) {
        _totalGasto = 0.0;
        print(
            "Total gasto do cliente $nome foi zerado por ter passado 6 meses desde a primeira compra.");
      }
    }
  }

  String formatarDataPrimeiraCompra() {
    return "${primeiraCompra.day.toString().padLeft(2, '0')}/${primeiraCompra.month.toString().padLeft(2, '0')}/${primeiraCompra.year}";
  }
}

List<String> opcoes = [
  "Cadastrar cliente",
  "Atualizar gasto do cliente",
  "Zerar gasto total do cliente",
  "Sair"
];
void main() {
  List<Cliente> clientes = [];
  DateTime hoje = DateTime.now();

  print("Data atual (dd/MM/yyyy): ");
  stdout.write("Dia: ");
  int diaHoje = int.parse(stdin.readLineSync()!);
  stdout.write("Mês: ");
  int mesHoje = int.parse(stdin.readLineSync()!);
  stdout.write("Ano: ");
  int anoHoje = int.parse(stdin.readLineSync()!);
  hoje = DateTime(anoHoje, mesHoje, diaHoje);
  int opcao = 0;
  while (opcao != 4) {
    for (var i = 0; i < opcoes.length; i++) {
      print("${i + 1} - ${opcoes[i]}");
    }
    stdout.write("Escolha uma opção: ");
    opcao = int.parse(stdin.readLineSync()!);
    if (opcao == 4) {
      break;
    } else if (opcao < 0 || opcao > opcoes.length) {
      print("Código inválido, tente novamente");
      continue;
    }

    switch (opcao) {
      case 1:
        cadastrarCliente(clientes);
        break;
      case 2:
        atualizarTotalGasto(clientes);
        break;
      case 3:
        zerarTotalGastoNaoVIP(clientes, hoje);
        break;
    }
  }
}

void cadastrarCliente(List<Cliente> clientes) {
  stdout.write("Nome: ");
  String nome = stdin.readLineSync()!;

  stdout.write("CPF: ");
  String cpf = stdin.readLineSync()!;

  stdout.write("RG: ");
  String rg = stdin.readLineSync()!;

  stdout.write("Endereço: ");
  String endereco = stdin.readLineSync()!;

  print("Data da primeira compra (dd/MM/yyyy): ");
  stdout.write("Dia: ");
  int dia = int.parse(stdin.readLineSync()!);
  stdout.write("Mês: ");
  int mes = int.parse(stdin.readLineSync()!);
  stdout.write("Ano: ");
  int ano = int.parse(stdin.readLineSync()!);
  DateTime primeiraCompra = DateTime(ano, mes, dia);

  Cliente novoCliente = Cliente(nome, cpf, rg, endereco, primeiraCompra);
  clientes.add(novoCliente);
}

void atualizarTotalGasto(List<Cliente> clientes) {
  stdout.write("Digite o RG do cliente para atualizar o total gasto: ");
  String rg = stdin.readLineSync()!;

  bool encontrado = false;
  for (var cliente in clientes) {
    if (cliente.rg == rg) {
      encontrado = true;
      stdout.write("Digite o novo total gasto pelo cliente: ");
      double novoTotal = double.parse(stdin.readLineSync()!);
      cliente.atualizarTotalGasto(novoTotal);
      break;
    }
  }

  if (!encontrado) {
    print("Cliente não encontrado.");
  }
}

void zerarTotalGastoNaoVIP(List<Cliente> clientes, DateTime hoje) {
  for (var cliente in clientes) {
    cliente.verificarZerarTotalGasto(hoje);
  }
}
