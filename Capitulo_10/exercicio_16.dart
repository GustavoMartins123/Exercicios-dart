//16 - O acervo de uma biblioteca precisa ser informatizado. Para tanto, as
//principais informações das obras foram assim estruturadas:
//Obra(numero do tombo, numero do exemplar, data compra)
//Tombo(numero do tombo, nome da obra, nome do autor, nome da editora, codigo
//da area)
//Sabe-se que existem 20 tombos e, para cada um, há no máximo três exemplares.
//Defina vetores de registro para armazenar tais informações.
//Defina o menu e opções a seguir:
//1 - Cadastrar tombos
//2 - Cadastrar obras
//3 - Mostrar obras por área
//4 - Mostrar obras por autor
//5 - Mostrar obras por editora
//6 - Encerrar o programa
//*Existem três áreas: 1 - exatas, 2 - humanas e sociais e 3 - biomédicas.
import 'dart:io';

List<String> servicosDisponiveis = [
  "Cadastrar tombos",
  "Cadastrar obras",
  "Mostrar obras por área",
  "Mostrar obras por autor",
  "Mostrar obras por editora",
  "Sair"
];
const int maxExemplares = 3;

class Obra {
  int numeroTombo;
  int numeroExemplar;
  String dataCompra;

  Obra(this.numeroTombo, this.numeroExemplar, this.dataCompra);
}

class Tombo {
  int numeroTombo;
  String nomeDaObra;
  String nomeAutor;
  String nomeEditora;
  int codigoArea;
  List<Obra> exemplares = [];

  Tombo(this.numeroTombo, this.nomeDaObra, this.nomeAutor, this.nomeEditora,
      this.codigoArea);
  void adicionarObra(int numeroExemplar, String dataCompra) {
    if (exemplares.length < maxExemplares) {
      Obra obra = Obra(numeroTombo, numeroExemplar, dataCompra);
      exemplares.add(obra);
    } else {
      print("Número máximo de exemplares por tombo atingido ($maxExemplares).");
    }
  }
}

List<Tombo> tombos = [];
void main(List<String> args) {
  int menuNum = 0;
  while (menuNum != 6) {
    print("Serviços disponives: ");
    for (var i = 0; i < servicosDisponiveis.length; i++) {
      print("${i + 1} - ${servicosDisponiveis[i]}");
    }
    stdout.write("Digite o serviço desejado: ");
    menuNum = int.parse(stdin.readLineSync()!);
    if (menuNum == 6) {
      break;
    }
    if (menuNum <= 0 || menuNum > servicosDisponiveis.length) {
      print("Código inválido, tente novamente");
      continue;
    }
    switch (menuNum) {
      case 1:
        stdout.write("Digite o numero do tombo: ");
        int numeroTombo = int.parse(stdin.readLineSync()!);
        stdout.write("Digite o nome da obra: ");
        String nomeObra = stdin.readLineSync()!;
        stdout.write("Digite o nome do autor(a): ");
        String nomeAutor = stdin.readLineSync()!;
        stdout.write("Digite o nome da editora: ");
        String nomeEditora = stdin.readLineSync()!;
        int codigoArea = 0;
        while (codigoArea <= 0 || codigoArea > 3) {
          print("1 - Exatas\n2 - Humanas e Sociais\n3 -  Biomédicas");
          stdout.write("Digite o código da área: ");
          codigoArea = int.parse(stdin.readLineSync()!);
        }
        cadastrarTombo(
            numeroTombo, nomeObra, nomeAutor, nomeEditora, codigoArea);
        break;
      case 2:
        cadastrarObras(tombos);
        break;
      case 3:
        int codigoArea = 0;
        while (codigoArea <= 0 || codigoArea > 3) {
          print("1 - Exatas\n2 - Humanas e Sociais\n3 -  Biomédicas");
          stdout.write("Digite o código da área: ");
          codigoArea = int.parse(stdin.readLineSync()!);
        }
        mostrarObrasPorArea(codigoArea);
        break;
      case 4:
        mostrarObrasPorAutor(tombos);
        break;
      case 5:
        mostrarObrasPorEditora(tombos);
    }
  }
}

void cadastrarTombo(int numeroTombo, String nomeObra, String nomeAutor,
    String nomeEditora, int codigoArea) {
  Tombo tombo =
      Tombo(numeroTombo, nomeObra, nomeAutor, nomeEditora, codigoArea);
  tombos.add(tombo);
}

void cadastrarObras(List<Tombo> tombos) {
  stdout.write("Número do Tombo: ");
  int numeroTombo = int.parse(stdin.readLineSync()!);

  Tombo? tomboEncontrado;
  for (var tombo in tombos) {
    if (tombo.numeroTombo == numeroTombo) {
      tomboEncontrado = tombo;
      break;
    }
  }
  if (tomboEncontrado != null) {
    stdout.write("Número do Exemplar: ");
    int numeroExemplar = int.parse(stdin.readLineSync()!);

    stdout.write("Data da Compra: ");
    String dataCompra = stdin.readLineSync()!;

    tomboEncontrado.adicionarObra(numeroExemplar, dataCompra);
    print("Obra cadastrada no tombo ${tomboEncontrado.numeroTombo}.");
  } else {
    print("Tombo não encontrado.");
  }
}

void mostrarObrasPorArea(int codigoArea) {
  List<String> obrasPorArea = [];
  for (var i = 0; i < tombos.length; i++) {
    if (tombos[i].codigoArea == codigoArea) {
      obrasPorArea.add(tombos[i].nomeDaObra);
    }
  }
  print("Mostrando obras: ");
  for (var i = 0; i < obrasPorArea.length; i++) {
    print("${i + 1} - ${obrasPorArea[i]}");
  }
}

void mostrarObrasPorAutor(List<Tombo> tombos) {
  stdout.write("Digite o Nome do Autor: ");
  String nomeAutor = stdin.readLineSync()!;

  bool encontrouObras = false;
  for (var tombo in tombos) {
    if (tombo.nomeAutor.toLowerCase() == nomeAutor.toLowerCase() &&
        tombo.exemplares.isNotEmpty) {
      encontrouObras = true;
      print("\nTombo ${tombo.numeroTombo}: ${tombo.nomeDaObra}");
      for (var obra in tombo.exemplares) {
        print(
            "  Exemplar ${obra.numeroExemplar} - Data de Compra: ${obra.dataCompra}");
      }
    }
  }
  if (!encontrouObras) {
    print("Nome inválido.");
  }
}

void mostrarObrasPorEditora(List<Tombo> tombos) {
  stdout.write("Digite o Nome da Editora: ");
  String nomeEditora = stdin.readLineSync()!;

  bool encontrouObras = false;
  for (var tombo in tombos) {
    if (tombo.nomeEditora.toLowerCase() == nomeEditora.toLowerCase() &&
        tombo.exemplares.isNotEmpty) {
      encontrouObras = true;
      print("\nTombo ${tombo.numeroTombo}: ${tombo.nomeDaObra}");
      for (var obra in tombo.exemplares) {
        print(
            "  Exemplar ${obra.numeroExemplar} - Data de Compra: ${obra.dataCompra}");
      }
    }
  }

  if (!encontrouObras) {
    print("Editora inválida.");
  }
}
