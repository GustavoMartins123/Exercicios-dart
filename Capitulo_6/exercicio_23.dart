//23 - Faça um programa que leia dois vetores(A e B) com cinco posições para números
//inteiros. o programa deve, então, substrair o primeiro elemento de A do último
//de B, acumulando o valor, subtrair o segundo elemento de A do penúltimo de B,
//acumulando o valor, e assim por diante. Ao final, mostre o resultado de todas
//as subtrações realizadas.
void main(List<String> args) {
  List<int> vetorA = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> vetorB = [12, 19, 8, 7, 6, 5, 4, 3, 2, 1];
  int valorSubtraido = 0;
  for (int i = 0; i < 10; i++) {
    valorSubtraido += vetorA[i] - vetorB[vetorA.length - 1 - i];
  }

  print("Valor total da subtração dos vetores é: $valorSubtraido");
}
