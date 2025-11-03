// Importe o novo widget

import 'package:arthemisapp/widgets/info_bullet.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:flutter/material.dart';

class PagAmamentacao extends StatelessWidget {
  const PagAmamentacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MeuAppBar(titulo: 'Amamentação ', mostrarLogo: true),
      endDrawer: const MenuLateral(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // Alinhamento à esquerda melhora a leitura de artigos
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título do Artigo
              const Center(
                child: Text(
                  'Amamentação: benefícios, desafios e como superá-los',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://pharmaceutical-journal.com/wp-content/uploads/2022/11/breastfeeding-woman.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              const Text(
                'A amamentação é uma etapa importante da maternidade, reconhecida por seus inúmeros benefícios para a saúde da mãe e do bebê. Mas apesar de ser natural, nem sempre é simples. Dores, inseguranças e dificuldades são comuns — e falar sobre isso é essencial.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  '🍼 Benefícios da Amamentação para Mãe e Bebê',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),
              SizedBox(height: 10),

              const Text(
                'O leite materno é considerado o padrão-ouro da alimentação infantil, oferecendo inúmeros benefícios:',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '\nPara a bebê, ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: 'a amamentação:',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '•  ', // bolinha com espaço extra
                      style: TextStyle(
                        fontSize: 20,
                        height: 1.5,
                      ), // bolinha levemente maior
                    ),
                    TextSpan(
                      text:
                          'Protege contra infecções respiratórias, diarreia e alergias;',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '•  ',
                      style: TextStyle(fontSize: 20, height: 1.5),
                    ),
                    TextSpan(
                      text:
                          'Reduz o risco de doenças crônicas como obesidade, diabetes e hipertensão',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '•  ',
                      style: TextStyle(fontSize: 20, height: 1.5),
                    ),
                    TextSpan(
                      text: 'Favorece o desenvolvimento físico e emocional.',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),

              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '\nPara a mãe, ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: 'a amamentação:',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '•  ', // bolinha com espaço extra
                      style: TextStyle(
                        fontSize: 20,
                        height: 1.5,
                      ), // bolinha levemente maior
                    ),
                    TextSpan(
                      text:
                          'Reduz o risco de câncer de mama, ovário e endométrio;',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '•  ',
                      style: TextStyle(fontSize: 20, height: 1.5),
                    ),
                    TextSpan(
                      text: 'Ajuda na prevenção da diabetes tipo 2;',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '•  ',
                      style: TextStyle(fontSize: 20, height: 1.5),
                    ),
                    TextSpan(
                      text: 'Acelera a recuperação pós-parto;',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '•  ',
                      style: TextStyle(fontSize: 20, height: 1.5),
                    ),
                    TextSpan(
                      text: 'Fortalece o vínculo com o bebê.',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),

              const Text(
                '\nA recomendação dos órgãos de saúde é de amamentação exclusiva até os 6 meses e que seja mantida até os 2 anos ou mais, junto com outros alimentos.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Center(
                child: Text(
                  '\n❤️‍🩹 Desafios que Podem Surgir',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),
              SizedBox(height: 10),

              const InfoBullet(
                label: 'Demora na descida do leite',
                text:
                    '(entre o 3º e 5º dia pós-parto), mais comum após cesáreas ou partos prematuros.',
              ),
              const InfoBullet(
                label: 'Dificuldades na pega,',
                text:
                    ' bebês podem ter dificuldade para sugar devido a fatores como uso de bicos artificiais ou língua presa.',
              ),
              const InfoBullet(
                label: 'Mamilos planos ou invertidos,',
                text: 'que exigem paciência e técnicas adequadas.',
              ),
              const InfoBullet(
                label: 'Dor e fissuras, ',
                text: 'geralmente causadas por pega incorreta.',
              ),
              const InfoBullet(
                label: 'Pouca produção de leite,',
                text: 'frequentemente relacionada à falta de estímulo adequado',
              ),
              const InfoBullet(
                label: 'Produção excessiva de leite (hiperlactação),',
                text: 'que pode causar desconforto para mãe e bebê.',
              ),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://i.pinimg.com/736x/48/5f/7a/485f7a70ce45e626446272eebb9ce6b4.jpg',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const Center(
                child: Text(
                  '\n❤🤝 Superando os Desafios com Apoio',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),
              SizedBox(height: 10),

              const InfoBullet(
                label: 'Bancos de Leite Humano,',
                text: ' que oferecem orientação gratuita.',
              ),
              const InfoBullet(
                label: 'Salas de Apoio à Amamentação, ',
                text:
                    ' disponíveis em várias empresas e instituições públicas.',
              ),
              const InfoBullet(
                label: 'Profissionais de saúde',
                text: '(pediatras, enfermeiras, consultoras em aleitamento)',
              ),
              const InfoBullet(
                label: 'E, claro,',
                text:
                    'o apoio de quem está por perto — seja parceiro(a), familiares ou amigas.',
              ),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://img.freepik.com/vetores-premium/personagens-do-conceito-de-amamentacao-de-desenho-animado-mae-segurando-bebe-recem-nascido-crianca-elemento-de-estilo-de-design-plano-ilustracao-vetorial-do-cuidado-da-mae_287964-4034.jpg',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
