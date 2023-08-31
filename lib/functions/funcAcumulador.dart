import 'package:dart_app/functions/utils.dart' as utils;

void funcAcumulador() {
  var line = utils.lerConsole("Digite um número ou S para sair");
//  double acumulador = 0;
  List<double> numeros = [];
  while (line != "S") {
//    var numero = double.parse(line);
    numeros.add(double.parse(line));
//    acumulador = utils.soma(acumulador, numero);

    line = utils.lerConsole("Digite um número ou 'S' para sair");
  }
  print("O valor dos número acumulados é:");
  print(utils.somaLista(numeros));
}
