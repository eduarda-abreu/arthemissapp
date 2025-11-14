import 'package:arthemisapp/pages/pag_amamentacao.dart';
import 'package:arthemisapp/pages/pag_cesaria.dart';
import 'package:arthemisapp/pages/pag_corpo.dart';
import 'package:arthemisapp/pages/pagcistonoovario.dart';
import 'package:arthemisapp/pages/pagcorrimento.dart';
import 'package:arthemisapp/pages/pagexameginecologico.dart';
import 'package:arthemisapp/pages/pagists.dart';
import 'package:arthemisapp/pages/pagmenopausa.dart';
import 'package:arthemisapp/pages/pagmenstruacao.dart';
import 'package:arthemisapp/pages/pagmetodos.dart';
import 'package:arthemisapp/pages/pagpuberdade.dart';
import 'package:arthemisapp/pages/pagsop.dart';
import 'package:flutter/material.dart';
// IMPORTANTE: Importe a página de destino que você criou
import '../pages/pagendometriose.dart'; // Ajuste o caminho se necessário
import 'content_grid_card.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. ATUALIZANDO A LISTA DE DADOS
    // Agora a lista inclui a página de destino para cada item.
    // Usamos 'dynamic' porque a lista agora tem Strings e Widgets.
    final List<Map<String, dynamic>> contentItems = [
      //menstruação
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/ChatGPT-Image-15-de-abr.-de-2025-14_54_00.png',
        'title': 'Menstruação',
        'description': 'Conheça mais sobre o seu ciclo e suas fases.',
        'destinationPage': const PagMestruacao(),
      },

      //ISTs
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/ist-1663006566.png',
        'title': 'ISTs',
        'description': 'Saiba o que são e como se prevenir.',
        'destinationPage': const PagISTs(),
      },

      //Métodos contraceptivos
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/MET-CONTRACEP.avif ',
        'title': 'Métodos Contraceptivos',
        'description': 'Explore os tipos e encontre o ideal para você.',
        'destinationPage': const PagMetodos(),
      },

      //Menopausa
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/MENOPAUSA.png',
        'title': 'Menopausa',
        'description': 'Entenda os sintomas e esta nova fase da vida.',
        'destinationPage': const PagMenopausa(),
      },

      //Exames Ginecológicos (TÍTULO CORRIGIDO)
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/exames-ginecologicos.avif',
        'title': 'Exames Ginecológicos', // Título estava errado
        'description': 'Descubra a importância dos exames de rotina.',
        'destinationPage': const PagExames(),
      },

      //hpv
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/hpv.png',
        'title': 'HPV',
        'description': 'Entenda o que é, como se transmite e como se prevenir.',
        'destinationPage': const PagCistoNoOvario(),
      },

      //Cisto
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/cisto-no-ovario.jpg',
        'title': 'Cisto no Ovário',
        'description': 'Saiba o que são e quando merecem atenção médica.',
        'destinationPage': const PagCistoNoOvario(),
      },

      //endometriose
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/endometriose.jpeg',
        'title': 'Endometriose',
        'description': 'Saiba identificar os sintomas e como tratar.',
        'destinationPage': const PagEndometriose(),
      },

      //sop
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/sop-img.png',
        'title': 'Síndrome do Ovário Policístico',
        'description': 'Conheça os sintomas e formas de tratamento da SOP.',
        'destinationPage': const PagSop(),
      },

      //Puberdade
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/puberdade-1.jpg',
        'title': 'Puberdade',
        'description': 'Descubra as mudanças naturais do corpo nessa fase.',
        'destinationPage': const PagPuberdade(),
      },

      //Conhecendo o corpo
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/conhecendo-o-corpo-2.avif',
        'title': 'Conhecendo o corpo',
        'description': 'Aprenda mais sobre o funcionamento do corpo feminino',
        'destinationPage': const PagCorpo(),
      },

      //Partos
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/parto.jpg',
        'title': 'Cesárea vs Parto normal',
        'description':
            'Entenda as diferenças e como escolher o melhor para você.',
        'destinationPage': const PagCesaria(),
      },

      //Amamentação
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/amamentacap.png',
        'title': 'Amamentação',
        'description':
            'Veja os benefícios do aleitamento e dicas para esse momento.',
        'destinationPage': const PagAmamentacao(),
      },

      //Corrimento
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/corrimento-e1747062859519.jpg',
        'title': 'Corrimento vaginal',
        'description': 'Saiba quando é normal e quando exige cuidados.',
        'destinationPage': const PagCorrimento(),
      },

      //Candidíase e vaginose
      {
        'image':
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/candidiase-e-vagiose.png',
        'title': 'Candidíase e vaginose',
        'description': 'Entenda as causas, sintomas e formas de prevenção.',
        'destinationPage': const PagAmamentacao(),
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // ... (código do Texto Introdutório, Título e Busca continua o mesmo)
            const SizedBox(height: 30),

            // 2. ATUALIZANDO O GRID
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.6,
              ),
              itemCount: contentItems.length,
              itemBuilder: (context, index) {
                final item = contentItems[index];

                return ContentGridCard(
                  imagePath: item['image']!,
                  title: item['title']!,
                  description: item['description']!,
                  // 3. IMPLEMENTANDO A AÇÃO DE NAVEGAÇÃO
                  onTap: () {
                    // Verifica se existe uma página de destino para este card
                    if (item['destinationPage'] != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item['destinationPage'],
                        ),
                      );
                    } else {
                      // Opcional: Mostrar uma mensagem se a página ainda não foi criada
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Conteúdo em breve!')),
                      );
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
