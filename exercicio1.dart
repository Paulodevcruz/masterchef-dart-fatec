import 'dart:io';

void main() {
  print("Digite uma data no formato dd/mm/aaaa (ex: 10/01/1967):");
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.contains('/')) {
    // Divide a data onde tem a barra
    List<String> partes = entrada.split('/');
    
    if (partes.length == 3) {
      String dia = partes[0];
      String mesNum = partes[1];
      String ano = partes[2];

      // Mapa para converter o número do mês em nome por extenso
      Map<String, String> meses = {
        "01": "Janeiro", "02": "Fevereiro", "03": "Março", "04": "Abril",
        "05": "Maio", "06": "Junho", "07": "Julho", "08": "Agosto",
        "09": "Setembro", "10": "Outubro", "11": "Novembro", "12": "Dezembro",
      };

      String mesExtenso = meses[mesNum] ?? "Mês Inválido";
      print("\nResultado: $dia de $mesExtenso de $ano");
    } else {
      print("Formato de data incorreto!");
    }
  }
}
