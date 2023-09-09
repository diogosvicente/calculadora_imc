import 'package:imc_dart/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Nome não pode ser vazio', () {
    var pessoa = Pessoa();
    pessoa.setNome("Teste");
    expect(pessoa.getNome(), isNotEmpty);
  });

  test('Altura deve ser maior que zero', () {
    var pessoa = Pessoa();
    pessoa.setAltura(1.75); // Defina uma altura válida (maior que zero)
    expect(pessoa.getAltura(),
        greaterThan(0)); // Verifica se a altura é maior que zero
  });

  test('Peso deve ser maior que zero', () {
    var pessoa = Pessoa();
    pessoa.setPeso(70.0); // Defina um peso válido (maior que zero)
    expect(pessoa.getPeso(),
        greaterThan(0)); // Verifica se o peso é maior que zero
  });
}
