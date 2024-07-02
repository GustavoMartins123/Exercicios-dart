//24 - Faça um programa que receba a quantidade de dinheiro em reais que uma
//pessoa que vai viajar possui. Ela vai passar por vários países e precisa
//converter seu dinheiro em dólares, marco alemão e libra esterlina.
//Sabe-se que a cotação do dólar é de 1,80, do marco alemão é de 2,00 e da
//Libra esterlina é de 1,57. O programa deve fazer as conversões e mostrá-las.
import 'dart:io';

void main(List<String> args) {
  print("Digite o valor do dinheiro em reais: ");
  double valorDinheiro = double.parse(stdin.readLineSync()!);
  calcularCotacao(valorDinheiro);
}

void calcularCotacao(double valorDinheiro) {
  double dolares = valorDinheiro / 1.8;
  double marcoAlemao = valorDinheiro / 2;
  double libraEsterlina = valorDinheiro / 1.57;
  List<String> valores = [
    "Valor em dolares: ${dolares.round()}",
    "Valor em marco alemão: ${marcoAlemao.round()}",
    "Valor em libra esterlina: ${libraEsterlina.round()}"
  ];
    for (var i = 0; i < valores.length; i++) {
    print(valores[i]);
  }

}
