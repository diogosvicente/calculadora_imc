import 'package:imc_dart/models/pessoa.dart';
import 'package:imc_dart/models/utils.dart';

void execute() {
  Pessoa p1 = Pessoa();
  double imc;
  String classificacao, imcFormatado;

  print("--- Bem vindo a Calculadora IMC ☺ ---");
  p1.setNome(Utils.lerTexto("Digite um nome:"));
  p1.setPeso(Utils.lerDouble("Digite o peso:"));
  p1.setAltura(Utils.lerDouble("Digite a altura:"));

  imc = p1.calcularImc();
  imcFormatado = imc.toStringAsFixed(2);
  classificacao = p1.classificarImc();

  print("\n[--- RESULTADO ---]");
  print(
    "Nome: ${p1.getNome()}\t"
    "Peso: ${p1.getPeso()}\t"
    "Altura: ${p1.getAltura()}\n"
    "IMC: $imcFormatado - $classificacao"
    );
}
