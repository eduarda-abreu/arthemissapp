import 'package:flutter/material.dart';

class SecinfoBullet extends StatelessWidget {
  final String label;
  final String text;
  final String? boldTextEnd; // Parâmetro opcional para o negrito no final

  const SecinfoBullet({
    super.key,
    required this.label,
    required this.text,
    this.boldTextEnd, // Adicionado ao construtor
  });

  @override
  Widget build(BuildContext context) {
    // O estilo base
    const TextStyle baseStyle = TextStyle(fontSize: 16, height: 1.5);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text.rich(
        TextSpan(
          // Estilo padrão para o parágrafo
          style: baseStyle,
          children: [
            // 1. A parte em negrito (label)
            TextSpan(
              text: '$label ', // Adiciona um espaço
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            // 2. A parte com texto normal
            TextSpan(text: text),

            // 3. A parte em negrito no final (só aparece se for fornecida)
            if (boldTextEnd != null)
              TextSpan(
                text: boldTextEnd,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
          ],
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
