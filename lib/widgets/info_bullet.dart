import 'package:flutter/material.dart';

class InfoBullet extends StatelessWidget {
  final String label;
  final String text;

  const InfoBullet({super.key, required this.label, required this.text});

  @override
  Widget build(BuildContext context) {
    // Definindo o estilo base que você usou no corpo do texto
    const TextStyle baseStyle = TextStyle(fontSize: 16, height: 1.5);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // O widget Text para o bullet "•"
          Padding(
            padding: const EdgeInsets.only(top: 2.0, right: 8.0),
            child: Text(
              "•",
              style: baseStyle.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black54, // Cor do bullet
              ),
            ),
          ),

          // Expanded garante que o texto quebre a linha se for muito longo
          Expanded(
            child: Text.rich(
              TextSpan(
                // Estilo padrão para este parágrafo
                style: baseStyle,
                children: [
                  // A parte em negrito (label)
                  TextSpan(
                    text: '$label ', // Adiciona um espaço
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // A parte com texto normal
                  TextSpan(text: text),
                ],
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
