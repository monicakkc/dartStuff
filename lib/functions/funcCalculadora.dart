import 'package:dart_app/functions/utils.dart' as utils;
import 'dart:io';

void funcCalculadora() {

// Calculadora com switch
  print("Bem vindo a calculadora simplificada!");
  
  var numero1 = double.parse(utils.lerConsole("Informe o primeiro número: "));
  var numero2 = double.parse(utils.lerConsole("Informe o segundo número: "));
//  var operador = line ?? "";
  var operador = utils.lerConsole("Informe o operador (+, -, *, /): ");
  var operacao = operador;
 

  void calcular(double numero1, double numero2, String operador, String operacao ) {
    double resultado = 0;

    switch (operador) {
      case "+":
        resultado = utils.soma(numero1,numero2);
        operacao = "Soma";
        break; 
      case "-":
        resultado = utils.subtrai(numero1,numero2);
        operacao = "Subtração";      
        break;
      case "*":
        resultado = utils.multiplica(numero1,numero2);
        operacao = "Multiplicação";
        break;
      case "/":
        resultado = utils.divide(numero1,numero2);
        operacao = "Divisão";
        break;     
      default:
        operacao = "inválida!";
        print("A operação escolhida foi $operacao");
        exit(0);
    }
    print("A operação escolhida foi $operacao");
    print("O resultado é: $resultado");
  }

  calcular(numero1,numero2,operador,operacao);

}
