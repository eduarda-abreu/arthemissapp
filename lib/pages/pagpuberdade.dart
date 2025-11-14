import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:flutter/material.dart';
import '../data/quiz_data.dart';
import 'quiz_page.dart';
import '../widgets/info_bullet.dart';

import '../data/quiz_puberdade.dart';

class PagPuberdade extends StatelessWidget {
  const PagPuberdade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Usando nossa AppBar customizada.
      // Note que não passamos 'mostrarLogo', então ela exibe apenas o título.
      appBar: MeuAppBar(titulo: 'Puberdade', mostrarLogo: true),

      // 2. Adicionando o mesmo menu lateral, para que o usuário possa
      // navegar para outras partes do app a partir daqui.
      endDrawer: const MenuLateral(),

      // 3. Corpo da página com conteúdo de exemplo.
      body: SingleChildScrollView(
        // Permite que a página role se o conteúdo for longo
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título do Artigo
              const Text(
                'Puberdade',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 20),

              // Imagem Ilustrativa (substitua pela sua)
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTctjqOMBqQMI9m2MI8QNORrTf-QX2ZRWyUGg&s',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              // Parágrafos de Texto (substitua pelo seu conteúdo)
              const Text(
                'A puberdade é uma fase de transição entre a infância e a vida adulta, marcada por uma série de mudanças físicas, hormonais e emocionais. Esse processo ocorre principalmente entre 8 e 13 anos nas meninas, mas pode variar de acordo com fatores genéticos e ambientais. Durante a puberdade, o corpo das meninas passa por mudanças significativas que são essenciais para o desenvolvimento reprodutivo.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 20),

              //Mudanças físicas
              const Center(
                child: Text(
                  '🌸 Mudanças Físicas\n',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const Text(
                '\tDurante a puberdade, as meninas experimentam várias transformações no corpo:\n  Crescimento de estatura: A puberdade desencadeia um aumento rápido na altura, conhecido como “estirão de crescimento”. \n   Crescimento de pelos pubianos e axilares: Os pelos começam a crescer nas áreas pubiana e nas axilas devido ao aumento da produção de hormônios sexuais, como o estrogênio.\n   Desenvolvimento das mamas: O crescimento das mamas é um dos primeiros sinais visíveis da puberdade. Esse processo pode durar vários anos.\n   Alterações na forma do corpo: As meninas desenvolvem uma silhueta mais curvilínea, com aumento na largura dos quadris e depósito de gordura nas coxas e nádegas.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              //Inicio da Menstruação(Menarca)
              const Center(
                child: Text(
                  '\n🩸 Início da Menstruação (Menarca)\n',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const Text(
                'Um dos marcos mais importantes da puberdade é o início da menstruação, conhecido como menarca. Geralmente, a menarca ocorre entre os 10 e 15 anos, sendo mais comum por volta dos 12 anos. O ciclo menstrual é o processo pelo qual o corpo se prepara para uma possível gravidez. No início, o ciclo menstrual pode ser irregular, mas com o tempo tende a se estabilizar.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              //Mudanças Hormonais e emocionais
              const Center(
                child: Text(
                  '\n🌼 Mudanças Hormonais e Emocionais\n',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const Text(
                'Durante a puberdade, as meninas vivenciam muitas mudanças, tanto no corpo quanto nas emoções. Nesse período, os hormônios começam a agir mais intensamente, o que pode causar transformações físicas, como o crescimento dos seios e o início do ciclo menstruação \n   As emoções também ficam mais intensas, e é comum se sentir mais ansiosa, insegura ou até mais irritada. Esses sentimentos são naturais e fazem parte do processo de se tornar uma pessoa adulta.\n   Além disso, é uma fase em que muitas meninas começam a buscar mais independência, a explorar quem realmente são e a se entender melhor. A puberdade pode ser um momento desafiador, mas é também uma fase de descobertas e de crescimento emocional.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/mudanca-no-corpo.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //Cuidados com a saúde durante a puberdade
              const Center(
                child: Text(
                  '\n💗 Cuidados com a Saúde Durante a Puberdade\n',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const Text(
                ' É importante que as meninas sigam alguns cuidados para promover um desenvolvimento saudável durante a puberdade:',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              const InfoBullet(
                label: 'Higiene:',
                text:
                    'O cuidado com a higiene pessoal é essencial, especialmente com a menstruação e os pelos pubianos.',
              ),

              const InfoBullet(
                label: 'Alimentação equilibrada:',
                text:
                    'A alimentação saudável é fundamental para garantir o bom desenvolvimento físico e hormonal durante essa fase.',
              ),

              const InfoBullet(
                label: 'Exercícios físicos:',
                text:
                    'A prática regular de atividades físicas ajuda no controle do peso, na manutenção da saúde óssea e no equilíbrio emocional.',
              ),

              //Impactos Sociais e Psicológicos
              const Center(
                child: Text(
                  '\n💭 Impactos Sociais e Psicológicos\n',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const Text(
                ' A puberdade não afeta apenas o corpo, mas também as relações sociais e psicológicas. Muitas meninas passam por um período de busca por identidade e podem sentir a pressão para se adaptar às expectativas sociais sobre o corpo e o comportamento. É importante que o apoio emocional da família e de profissionais de saúde seja disponível para ajudar as jovens a lidar com essas mudanças de forma saudável.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              //Quando procurar um profissional de saúde
              const Center(
                child: Text(
                  '\n🩺 Quando Procurar um Profissional de Saúde\n',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const Text(
                ' Se houver qualquer dúvida ou preocupação durante a puberdade, é importante procurar um médico especializado, como um pediatra ou ginecologista. Consultas regulares podem ajudar a monitorar o desenvolvimento físico e a saúde geral da jovem, além de tratar qualquer problema que possa surgir durante essa fase.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              //teste de conhecimento
              const Center(
                child: Text(
                  '\n🔎 Teste seus conhecimentos\n',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const Text(
                'Agora que você aprendeu sobre as mudanças que ocorrem durante a puberdade, que tal testar seus conhecimentos? Responda às perguntas a seguir e veja se conseguiu absorver as informações importantes sobre essa fase da vida.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
