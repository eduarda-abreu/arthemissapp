import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:arthemisapp/theme/app_colors.dart';

class IntroTextBlockTest extends StatelessWidget {
  const IntroTextBlockTest({super.key});

  @override
  Widget build(BuildContext context) {
    // --- (Os estilos continuam os mesmos) ---
    final TextStyle bodyStyle = GoogleFonts.lato(
      fontSize: 16,
      height: 1.5,
      color: AppColors.textDark,
    );
    GoogleFonts.lato(
      fontSize: 14,
      fontStyle: FontStyle.italic,
      color: Colors.black87,
    );
    GoogleFonts.lato(fontSize: 12, color: Colors.grey[700]);

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
                      'É essencial que a mulher tenha acesso ao conhecimento de forma leve e acessível. Por isso, o ',
                ),
                TextSpan(
                  text: 'Arthemiss',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      ' oferece testes interativos que ajudam a fixar conteúdos sobre saúde e bem-estar. De forma simples e educativa, eles promovem o autoconhecimento, desmistificam temas importantes e reforçam o poder da informação na vida de cada mulher.',
                ),
              ],
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 24),

          // --- Citação ---
          /*
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
          ), */
          SizedBox(height: 20),

          const Center(
            child: Text(
              'Testes Arthemiss',
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
