import 'package:arthemisapp/data/quiz_amamentacao.dart';
import 'package:arthemisapp/data/quiz_candevagi.dart';
import 'package:arthemisapp/data/quiz_cesareavspartonorm.dart';
import 'package:arthemisapp/data/quiz_cistonoovario.dart';
import 'package:arthemisapp/data/quiz_conhecendocorpo.dart';
import 'package:arthemisapp/data/quiz_corrimento.dart';
import 'package:arthemisapp/data/quiz_endometriose.dart';
import 'package:arthemisapp/data/quiz_exgineco.dart';
import 'package:arthemisapp/data/quiz_hpv.dart';
import 'package:arthemisapp/data/quiz_ist.dart';
import 'package:arthemisapp/data/quiz_menopausa.dart';
import 'package:arthemisapp/data/quiz_menstruacao.dart';
import 'package:arthemisapp/data/quiz_metcontracept.dart';
import 'package:arthemisapp/data/quiz_ovariopoli.dart';
import 'package:arthemisapp/data/quiz_puberdade.dart';
import 'package:arthemisapp/pages/quiz_page.dart';
import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart';
import 'test_grid.dart';

// --- FIM DOS MODELOS ---

class TestSection extends StatelessWidget {
  const TestSection({super.key});

  @override
  Widget build(BuildContext context) {
    // 3. LISTA DE DADOS PARA OS CARDS DE TESTE
    //    Similar à contentItems, mas com 'quizTopic' e 'imagePath'
    final List<Map<String, dynamic>> testItems = [
      //menstruação
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/menstruteste.png', // Imagem para o card
        'quizTopic': quizMenstruacao, // Dados do Quiz
      },

      //ist
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/istteste.png', // Imagem para o card
        'quizTopic': quizIST, // Dados do Quiz
      },

      //met contracep
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/metteste.png', // Imagem para o card
        'quizTopic': quizMetContracept, // Dados do Quiz
      },

      //menopausa
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/menoteste.avif', // Imagem para o card
        'quizTopic': quizMenopausa, // Dados do Quiz
      },

      //exame
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/examesginecotestes-removebg-preview-1.png', // Imagem para o card
        'quizTopic': quizExgineco, // Dados do Quiz
      },

      //hpv
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/hpvteste.png', // Imagem para o card
        'quizTopic': quizHPV, // Dados do Quiz
      },

      //cisto
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/cisto-no-ovario-teste.png', // Imagem para o card
        'quizTopic': quizCistonoovario, // Dados do Quiz
      },

      //endometriose
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/endometrioseteste.jpg', // Imagem para o card
        'quizTopic': quizEndometriose, // Dados do Quiz
      },

      //sop
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/sop-teste.png', // Imagem para o card
        'quizTopic': quizOvariopoli, // Dados do Quiz
      },

      //puberdade
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/puberteste.jpg', // Imagem para o card
        'quizTopic': quizPuberdade, // Dados do Quiz
      },

      //conhecendo o corpo
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/conhecendo-o-corpo-teste.jpg', // Imagem para o card
        'quizTopic': quizConhecendocorpo, // Dados do Quiz
      },

      // partos
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/cesarevsnormalteste.png', // Imagem para o card
        'quizTopic': quizCesareavspartonorm, // Dados do Quiz
      },

      //amamentação
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/amamentacao-teste.jpg', // Imagem para o card
        'quizTopic': quizAmamentacao, // Dados do Quiz
      },

      //corrimento
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/imagem_2025-05-12_204959884.png', // Imagem para o card
        'quizTopic': quizCorrimento, // Dados do Quiz
      },

      //candidiase
      {
        'imagePath':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/imagem_2025-05-12_212909733.png', // Imagem para o card
        'quizTopic': quizcandevagi, // Dados do Quiz
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.63, // Mesma proporção da ContentSection
            ),
            itemCount: testItems.length,
            itemBuilder: (context, index) {
              final item = testItems[index];
              // Pega o QuizTopic dos dados
              final quizData = item['quizTopic'] as QuizTopic;

              return TestGrid(
                imagePath: item['imagePath']!, // Usa a imagem definida aqui
                title: quizData.title, // Pega o título do QuizTopic
                description:
                    quizData.description, // Pega a descrição do QuizTopic
                onTap: () {
                  // Navega para a página de jogo passando o QuizTopic
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizData),
                    ),
                  );
                },
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
