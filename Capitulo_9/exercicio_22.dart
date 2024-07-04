//22 - Considere uma string composta por várias subsequências, por exemplo,
//cccaaaabbbbxdddddddddaaannn. A menor subsequência é a da letra 'x', com apenas
//um elemento, a maior subsequência é a da letra 'd', com nove elementos. Faça um
//programa para ler uma string e mostrar qual é a letra que ocorre na maior
//subsequência e tamanho desta subsequência.
//Exemplo:
//Entrada: aaabbbbaaa
//Saída: maior b, tamanho 4
import 'dart:io';

void main(List<String> args) {
  stdout.write("Digite uma sequencia de letras: ");
  String sequencia = stdin.readLineSync()!.trim();

  if (sequencia.isEmpty) {
    print("A sequência não pode estar vazia.");
    return;
  }
  String maiorQtdLetra = "";
  int maiorTamanho = 0;
  String letraAtual = "";
  int contador = 0;

  for (int i = 0; i < sequencia.length; i++) {
    if (letraAtual.isEmpty) {
      letraAtual = sequencia[i];
      contador = 1;
    } else if (sequencia[i] == letraAtual) {
      contador++;
    } else {
      if (contador > maiorTamanho) {
        maiorQtdLetra = letraAtual;
        maiorTamanho = contador;
      }
      letraAtual = sequencia[i];
      contador = 1;
    }
  }

  if (contador > maiorTamanho) {
    maiorQtdLetra = letraAtual;
    maiorTamanho = contador;
  }

  print("Maior subsequência: $maiorQtdLetra, tamanho: $maiorTamanho");
}
