//24 - Faça um programa que leia um vetor com quinze posições para números inteiros.
//Crie, a seguir, um vetor resultante que contenha todos os números primos do
//vetor digitado. Escreva o vetor resultante.
void main(List<String> args) {
  List<int> numeros = [24, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  List<int> numerosPrimos = [];
  for (var numero in numeros) {
    bool primo = true;

    if (numero <= 1) {
      primo = false;
    } else if (numero == 2) {
      primo = true;
    } else if (numero % 2 == 0) {
      primo = false;
    } else {
      for (int i = 3; i <= (numero / 2).round(); i += 2) {
        if (numero % i == 0) {
          primo = false;
          break;
        }
      }
    }
    if (primo) {
      numerosPrimos.add(numero);
    }
  }
  print("Numeros primos encontrados no vetor: $numerosPrimos");
}
