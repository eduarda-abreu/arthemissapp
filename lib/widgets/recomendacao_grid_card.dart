import 'package:flutter/material.dart';

class RecomendacaoGridCard extends StatelessWidget {
  final String image;
  final String title;
  final String type;
  final String platform;
  final String theme;
  final String description;

  const RecomendacaoGridCard({
    super.key,
    required this.image,
    required this.title,
    required this.type,
    required this.platform,
    required this.theme,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      // Clip.antiAlias evita que os filhos (como a imagem) vazem das bordas arredondadas
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGEM (com altura fixa)
          Image.network(
            image,
            fit: BoxFit.cover,
            height: 160,
            width: double.infinity,
            // Adiciona um placeholder em caso de erro
            errorBuilder: (context, error, stackTrace) => Container(
              height: 160,
              width: double.infinity,
              color: Colors.grey[200],
              child: Icon(Icons.broken_image, color: Colors.grey[400]),
            ),
          ),

          // --- CORREÇÃO DO OVERFLOW ---
          // 1. Expanded faz com que esta seção ocupe todo o espaço restante
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // Alinha os textos no topo do espaço
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    // 2. Limita o número de linhas
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$type • $platform',
                    style: TextStyle(color: Colors.grey[700], fontSize: 13),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Tema: $theme',
                    style: TextStyle(color: Colors.grey[800], fontSize: 13),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  // 3. O Spacer empurra a descrição para baixo (opcional, mas bom)
                  const Spacer(),
                  Text(
                    description,
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
