//19 - Uma empresa de eletrodomésticos está realizando um sorteio de uma
//Ferrari F-50, do qual participarão todos os que comprarem pelo menos cinco
//produtos de uma só vez nas lojas autorizadas. Faça um programa que:
//a) Leia os dados de todos os clientes, como nome, data de nascimento, CPF, RG,
//cidade em que mora, endereço e quantidade de eletrodomésticos adquiridos pelo
//cliente. Deve-se incluir um campo para o número do registro, que vai de 1 até
//9999.
//b) Faça o sorteio entre os clientes participantes. Somente os clientes que
//compraram mais que cinco equipamentos deverão participar. Será sorteado um
//número e o cliente que tiver o registro com esse número será o ganhador.
import 'dart:io';
import 'dart:math';

class Cliente {
  String nome;
  String dataNascimento;
  String cpf;
  String rg;
  String cidade;
  String endereco;
  int qtdCompra;
  int numeroRegistro;
  Cliente(this.nome, this.dataNascimento, this.cpf, this.rg, this.cidade,
      this.endereco, this.qtdCompra, this.numeroRegistro);
}

List<Cliente> clientes = [];
List<Cliente> clientesParticipantes = [];
void main(List<String> args) {
  List<String> opcoes = ["1 - Cadastrar Cliente", "2 - Sair"];
  int menu = 0;
  while (menu != 2) {
    for (var i = 0; i < opcoes.length; i++) {
      print(opcoes[i]);
    }
    stdout.write("Escolha sua opção: ");
    menu = int.parse(stdin.readLineSync()!);
    if (menu == 2) {
      break;
    } else if (menu <= 0 || menu > 2) {
      print("Código inválido, tente novamente");
      continue;
    }
    stdout.write("Digite o nome do cliente: ");
    String nomeCliente = stdin.readLineSync()!;
    stdout.write("Digite a data de nascimento do cliente: ");
    String dataNascimento = stdin.readLineSync()!;
    stdout.write("Digite o CPF do cliente: ");
    String cpfCliente = stdin.readLineSync()!;
    stdout.write("Digite o RG do cliente: ");
    String rgCliente = stdin.readLineSync()!;
    stdout.write("Digite a cidade do cliente: ");
    String cidadeCliente = stdin.readLineSync()!;
    stdout.write("Digite o endereço do cliente: ");
    String enderecoCliente = stdin.readLineSync()!;
    stdout.write("Digite a quantidade de compra do cliente: ");
    int qtdCompra = int.parse(stdin.readLineSync()!);
    int numeroRegistro = Random().nextInt(9999);
    cadastrarCliente(nomeCliente, dataNascimento, cpfCliente, rgCliente,
        cidadeCliente, enderecoCliente, qtdCompra, numeroRegistro);
  }
  if (clientes.isNotEmpty) {
    if (quantidadeNecessaria()) {
      int numeroSorteio = Random().nextInt(9999);
      sortearGanhador(numeroSorteio);
    } else {
      print("Quantidade de clientes insuficientes");
    }
  }
}

void cadastrarCliente(String nome, String dataNascimento, String cpf, String rg,
    String cidade, String endereco, int qtdCompra, int numeroRegistro) {
  Cliente cliente = Cliente(nome, dataNascimento, cpf, rg, cidade, endereco,
      qtdCompra, numeroRegistro);
  clientes.add(cliente);
}

void sortearGanhador(int numeroSorteio) {
  Cliente? clienteGanhador;
  for (var cliente in clientesParticipantes) {
    if (cliente.numeroRegistro == numeroSorteio) {
      clienteGanhador = cliente;
    }
  }
  if (clienteGanhador == null) {
    int random = Random().nextInt(clientes.length);
    clienteGanhador = clientes[random];
  }
  print(
      "Cliente ganhador ${clienteGanhador.nome} com o numero de registro: ${clienteGanhador.numeroRegistro}");
}

bool quantidadeNecessaria() {
  for (var cliente in clientes) {
    if (cliente.qtdCompra > 5) {
      clientesParticipantes.add(cliente);
    }
  }
  if (clientesParticipantes.length > 2) {
    return true;
  }
  return false;
}
