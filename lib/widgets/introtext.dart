import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:arthemisapp/theme/app_colors.dart';

class IntroTextBlock extends StatelessWidget {
  const IntroTextBlock({super.key});

  @override
  Widget build(BuildContext context) {
    // --- (Os estilos continuam os mesmos) ---
    final TextStyle bodyStyle = GoogleFonts.lato(
      fontSize: 16,
      height: 1.5,
      color: AppColors.textDark,
    );
    final TextStyle quoteStyle = GoogleFonts.lato(
      fontSize: 14,
      fontStyle: FontStyle.italic,
      color: Colors.black87,
    );
    final TextStyle citationStyle = GoogleFonts.lato(
      fontSize: 12,
      color: Colors.grey[700],
    );

    // --- AQUI ESTÁ A MUDANÇA ---
    // Adicionamos um Padding em volta de toda a coluna
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        24.0,
        24.0,
        24.0,
        0.0,
      ), // Padding lateral e superior
      child: Column(
        children: [
          // --- Bloco de Texto Introdutório ---
          Text.rich(
            TextSpan(
              style: bodyStyle,
              children: const [
                TextSpan(
                  text:
                      'É essencial que a mulher conheça pautas sociais e entenda a saúde do próprio corpo. Essa consciência fortalece sua autonomia, promove o autocuidado e contribui para a quebra de tabus, garantindo mais respeito, informação e poder de escolha. Pensando nisso, o ',
                ),
                TextSpan(
                  text: 'Arthemiss',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      ' reúne conteúdos informativos que apoiam mulheres em todas as fases da vida.',
                ),
              ],
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 24),

          // --- Citação ---
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('"Conhecimento é poder."', style: quoteStyle),
              const SizedBox(height: 4),
              Text(
                'Francis Bacon (filósofo e pensador inglês)',
                style: citationStyle,
              ),
            ],
          ),

          SizedBox(height: 20),

          const Center(
            child: Text(
              'Conteúdos de Saúde Feminina',
              textAlign:
                  TextAlign.center, // Centraliza o texto se quebrar linha
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5D100E),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
