import 'dart:io';

void main() {
  Map<int, int> contador = {};
  print("Digite 10 números inteiros:");

  for (int i = 0; i < 10; i++) {
    print("Número ${i + 1}:");
    String? entrada = stdin.readLineSync();
    if (entrada != null) {
      int n = int.parse(entrada);
      // Se o número já foi digitado, aumenta a contagem, senão começa com 1
      contador[n] = (contador[n] ?? 0) + 1;
    }
  }

  print("\n--- Relatório de Frequência ---");
  contador.forEach((numero, quantidade) {
    print("O número $numero apareceu $quantidade vez(es).");
  });
}
