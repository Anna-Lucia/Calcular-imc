import 'dart:convert';
import 'dart:io';


void main(List<String> arguments) {
  print("Digite seu peso. Ex: 50");
  var line = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line ?? "0");

  print("Digite sua altura. Ex: 1.65");
  var line2 = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line2 ?? "0");
  altura = altura * altura;

  void CalcularImc (double peso, double altura){
    double imc = (peso / altura);
    String imcFormatado = imc.toStringAsFixed(2);
    if(imc < 16) {print("Seu IMC é ${imc}, magreza extrema");}
    else if(imc >= 16 && imc < 17) {print("Seu IMC é $imcFormatado, magreza moderada");}
    else if(imc >= 17 && imc < 18.5) {print("Seu IMC é $imcFormatado, magreza leve");}
    else if(imc >= 18.5 && imc < 25) {print("Seu IMC é $imcFormatado, peso saudável");}
    else if(imc >= 25 && imc < 30) {print("Seu IMC é $imcFormatado, sobrepeso");}
    else if(imc >= 30 && imc < 35){ print("Seu IMC é $imcFormatado, obesidade");}
    else if(imc >= 35 && imc < 40) {print("Seu IMC é $imcFormatado, obesidade severa");}
    else {print("Seu IMC é $imcFormatado, obesidade mórbida");}
    
  } 
  CalcularImc(peso,altura);
  
}
