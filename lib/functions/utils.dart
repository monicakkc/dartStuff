import 'dart:convert';
import 'dart:io';

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double soma(double numero1, double numero2) {
  return numero1 + numero2;
}

double subtrai(double numero1, double numero2) {
  return numero1 - numero2;
}

double multiplica(double numero1, double numero2) {
  return numero1 * numero2;
}

double divide(double numero1, double numero2) {
  if (numero2 == 0) {
    print("Primeiro Mandamento da Matemática: Não dividirás por zero!");
    exit(0);
  } else {
      return numero1 / numero2;
  }
}

double somaLista(List<double> numeros) {
  double acumulator = 0;
  for (var numero in numeros) {
    acumulator = soma(acumulator, numero);
  }
  return acumulator;
}

