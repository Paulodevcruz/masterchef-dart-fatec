import 'dart:io';

// Função auxiliar para ler números até que o zero seja digitado
List<int> criarLista(String nome) {
  List<int> lista = [];
  print("\n--- Preenchendo a $nome (digite 0 para encerrar) ---");
  while (true) {
    String? entrada = stdin.readLineSync();
    if (entrada == null) break;
    int n = int.parse(entrada);
    if (n == 0) break;
    lista.add(n);
  }
  return lista;
}

void main() {
  List<int> lista1 = criarLista("Primeira Lista");
  List<int> lista2 = criarLista("Segunda Lista");

  // 1. Comparar tamanhos
  if (lista1.length > lista2.length) {
    print("\nA primeira lista é MAIOR que a segunda.");
  } else if (lista1.length < lista2.length) {
    print("\nA primeira lista é MENOR que a segunda.");
  } else {
    print("\nAs listas possuem o MESMO TAMANHO.");

    // 2. Se o tamanho for igual, ordenar e comparar conteúdo
    lista1.sort();
    lista2.sort();

    // Comparamos as listas transformando-as em texto para ver se são iguais
    if (lista1.toString() == lista2.toString()) {
      print("As listas são IDÊNTICAS!");
    } else {
      print("As listas NÃO são idênticas (possuem números diferentes).");
    }
  }
}
