import 'package:dart_app/functions/funcAcumulador.dart';
import 'package:dart_app/functions/funcCalculadora.dart';
import 'package:dart_app/functions/funcNotas.dart';
import 'package:dart_app/functions/utils.dart' as utils;
import 'dart:io';

void main(List<String> arguments) {
  print("Bem vindo ao app funções básicas em Dart! Escolha uma das opções:");
  print("[1] - Função Notas do Aluno");
  print("[2] - Função Acumulador");
  print("[3] - Funçaõ Calculadora");
  print("[S] - Sair");

  var line = utils.lerConsole("Informe a função desejada: ");
  while (line != "S") {
    switch (line) {
      case "1":
      print("Você escolheu a função Notas do Aluno. Siga as instruções:");
        funcNotas();
        line = utils.lerConsole("Informe a função desejada: ");
        break; 
      case "2":    
        print("Você escolheu a função Acumulador. Siga as instruções:");
        funcAcumulador();
        line = utils.lerConsole("Informe a função desejada: ");
        break;
      case "3":
        print("Você escolheu a função Calculadora. Siga as instruções:");
        funcCalculadora();
        line = utils.lerConsole("Informe a função desejada: ");
        break;
      case "S":     
         exit(0);
      default:
        print("A opção escolhida foi inválida");
        line = utils.lerConsole("Informe a função desejada: ");
    //
    }
  }
  print("Você escolheu a sair. Obrigada por participar!"); 
}
