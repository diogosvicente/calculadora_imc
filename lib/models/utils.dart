import 'dart:convert';
import 'dart:io';

class Utils {
	static String lerTexto(String mensagem) {
		String nome = "";
		while (nome.isEmpty) {
			print(mensagem);
			nome = (stdin.readLineSync(encoding: utf8) ?? "");
			if (nome.isNotEmpty) {
				break;
			}
			print("Você deve digitar um nome");
		}
		return (nome);
	}

	static double lerDouble(String mensagem) {
		double valor;
		while (true) {
			print(mensagem);
			var value = stdin.readLineSync(encoding: utf8) ?? "";
			try {
				valor = double.parse(value);
				if (valor > 0) {
					break;
				} else {
					print("O valor deve ser maior que zero.");
				}
			} catch (e) {
				print("Você deve digitar um valor válido.");
			}
		}
		return valor;
	}

}
