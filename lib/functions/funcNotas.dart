import 'dart:convert';
import 'dart:io';

void funcNotas() {
//  print('Hello world: ${dart_basic_app.calculate()}!');

// Nota do Aluno
  print("Informe a primeira nota do aluno: ");
  var line = stdin.readLineSync(encoding: utf8);
  var prova1 = int.parse(line ?? "0");
 
  print("Informe a segunda nota do aluno: ");
  line = stdin.readLineSync(encoding: utf8);
  var prova2 = int.parse(line ?? "0");

  var media = (prova1 + prova2) / 2;

  if (media >=7) {
    print("O aluno passou com a nota: $media");
  }  else if (media >=5) {
      print("O aluno ficou em recuperação com a nota: $media");
     } else {
        print("O aluno reprovou com a nota: $media");
      }
  return;
}
