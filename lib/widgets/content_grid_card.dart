import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors.dart'; // Mantenha seus imports

class ContentGridCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback onTap;

  const ContentGridCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.antiAlias, // Garante que a imagem não vaze
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Botão ocupa a largura
        children: [
          // 1. IMAGEM (com altura fixa)
          Image.network(
            imagePath,
            height: 120, // Altura fixa para a imagem
            fit: BoxFit.cover,
          ),

          // 2. ÁREA DE TEXTO (Flexível)
          // O Expanded vai ocupar todo o espaço entre a imagem e o botão
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Título
                  Text(
                    title,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.textDark,
                    ),
                    maxLines: 1, // Título com no máximo 1 linha
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),

                  // Descrição
                  Text(
                    description,
                    style: GoogleFonts.lato(
                      fontSize: 13,
                      color: Colors.grey[700],
                    ),
                    maxLines: 3, // SEU REQUISITO: máximo de 3 linhas
                    overflow: TextOverflow.ellipsis, // Adiciona "..." se passar
                  ),
                ],
              ),
            ),
          ),

          // 3. BOTÃO (fixo no fundo)
          // Não precisamos mais do Spacer, pois o Expanded já empurrou o botão
          Padding(
            padding: const EdgeInsets.fromLTRB(
              12,
              0,
              12,
              12,
            ), // Padding ajustado
            child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryRed,
                foregroundColor: AppColors.textLight,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Ir para conteúdo'),
            ),
          ),
        ],
      ),
    );
  }
}
