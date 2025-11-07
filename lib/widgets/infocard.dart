import 'package:flutter/material.dart';

// Nome da classe revertido para InfoCardWidget
class InfoCardWidget extends StatelessWidget {
  final String title;
  final List<String> bulletPoints;

  const InfoCardWidget({
    super.key,
    required this.title,
    required this.bulletPoints,
  });

  @override
  Widget build(BuildContext context) {
    // Estilos de texto
    final headingStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );

    final bodyStyle = TextStyle(
      fontSize: 16,
      color: Colors.black,
      height: 1.4, // Espaçamento entre linhas
    );

    final bulletStyle = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    );

    // O widget principal é uma Column (sem fundo)
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. Título (vem do parâmetro 'title')
        Text(title, style: headingStyle),
        const SizedBox(height: 5.0),

        // 2. Lista de Tópicos (vem do parâmetro 'bulletPoints')
        Column(
          children: bulletPoints.map((text) {
            // Para cada texto na lista, criamos uma linha
            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // A Bolinha "•"
                  Text('•', style: bulletStyle),
                  const SizedBox(width: 12.0),
                  // O Texto (com Expanded para quebrar linha)
                  Expanded(child: Text(text, style: bodyStyle)),
                ],
              ),
            );
          }).toList(), // Converte o mapa em uma lista de widgets
        ),
      ],
    );
  }
}
