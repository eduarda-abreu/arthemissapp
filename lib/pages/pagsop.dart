// Importe o novo widget
import 'package:arthemisapp/widgets/info_bullet.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:arthemisapp/widgets/secinfo_bullet.dart';
import 'package:flutter/material.dart';

class PagSop extends StatelessWidget {
  const PagSop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MeuAppBar(titulo: 'Menstruação', mostrarLogo: true),
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
                  'SOP: Entenda a Síndrome dos Ovários Policísticos',
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd8rJxsiD46ffzEC-7fk5ZfvKMJSesiuv6lQ&s',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              const Text(
                '  A Síndrome dos Ovários Policísticos (SOP) é uma condição de saúde que afeta os ovários e os hormônios das mulheres, sendo uma das condições hormonais mais comuns em mulheres em idade fértil. Ela é considerada uma síndrome porque envolve um conjunto de sintomas e alterações que podem variar bastante de uma mulher para outra.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  '🩺 O que é a SOP?',
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
                '  A SOP é uma doença de origem endócrina (ligada aos hormônios) e metabólica, e sua causa ainda não é totalmente compreendida. Ela envolve fatores genéticos, ambientais e comportamentais. Os principais elementos da síndrome são:',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              const InfoBullet(
                label: 'Anovulação: ',
                text:
                    'quando a ovulação não acontece regularmente, o que pode dificultar a gravidez e causar ciclos menstruais longos ou ausentes.',
              ),
              const InfoBullet(
                label: 'Hiperandrogenismo: ',
                text:
                    'excesso de hormônios masculinos que pode causar acne, aumento de pelos em regiões como rosto, peito e barriga (hirsutismo), e queda de cabelo com padrão masculino.',
              ),
              const InfoBullet(
                label: 'Ovários com aparência policística: ',
                text:
                    'presença de múltiplos cistos pequenos nos ovários visíveis por ultrassom, e/ou aumento do tamanho dos ovários.',
              ),
              const SizedBox(height: 10),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/sop.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                ' O diagnóstico definitivo só pode ser feito após 8 anos da primeira menstruação, pois os sintomas podem ser confundidos com alterações naturais da puberdade.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 10),

              const Center(
                child: Text(
                  '❕ Por que é importante saber se tenho SOP?',
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
                '  Mulheres com SOP podem apresentar desequilíbrios hormonais e metabólicos que aumentam o risco de:',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              const InfoBullet(label: '', text: 'Infertilidade'),
              const InfoBullet(label: '', text: 'Diabetes tipo 2'),
              const InfoBullet(label: '', text: 'Obesidade'),
              const InfoBullet(label: '', text: 'Colesterol alto'),
              const InfoBullet(
                label: '',
                text: 'Sangramentos menstruais intensos',
              ),
              const InfoBullet(
                label: '',
                text: 'Alterações no endométrio (parte interna do útero)',
              ),
              const Text(
                '  Por isso, é fundamental ter um acompanhamento médico multidisciplinar com ginecologista, endocrinologista, nutricionista e, se necessário, dermatologista.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Center(
                child: Text(
                  '🧬 Como é feito o diagnóstico?',
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
                '  O diagnóstico é clínico e de exclusão – ou seja, outras condições precisam ser descartadas primeiro. Ele é baseado nos sintomas, exames de imagem e exames laboratoriais. Alguns exames que podem ser solicitados:',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const InfoBullet(
                label: '',
                text:
                    'Dosagem de hormônios (testosterona, DHEA-S, prolactina, TSH)',
              ),
              const InfoBullet(
                label: '',
                text: 'Ultrassonografia transvaginal',
              ),
              const InfoBullet(
                label: '',
                text:
                    'Avaliação de sinais clínicos como acne, hirsutismo e irregularidade menstrual',
              ),

              const SizedBox(height: 15),
              const Center(
                child: Text(
                  '💊 Tratamento',
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
                ' A SOP não tem cura, mas os sintomas podem ser controlados com tratamento adequado. O foco é aliviar os sintomas e prevenir complicações.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const SecinfoBullet(label: 'Estilo de vida saudável', text: ''),
              const InfoBullet(label: '', text: 'Alimentação balanceada'),
              const InfoBullet(
                label: '',
                text: 'Prática regular de exercícios',
              ),
              const InfoBullet(
                label: '',
                text:
                    'Redução de peso (mesmo pequena perda já melhora os sintomas)',
              ),

              const SecinfoBullet(label: 'Tratamento medicamentoso', text: ''),
              const InfoBullet(
                label: '',
                text:
                    'Anticoncepcionais hormonais: regulam o ciclo e reduzem os sintomas do hiperandrogenismo',
              ),
              const InfoBullet(
                label: '',
                text: 'Metformina: ajuda a controlar a resistência à insulina',
              ),
              const InfoBullet(
                label: '',
                text:
                    'Indutores da ovulação: indicados para mulheres que desejam engravidar',
              ),
              const InfoBullet(
                label: '',
                text:
                    'Outros medicamentos: como espironolactona, flutamida e finasterida, que combatem o excesso de hormônios masculinos',
              ),

              const SizedBox(height: 15),
              const Center(
                child: Text(
                  '🏥 Quem deve tratar a SOP?',
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
                ' O tratamento da SOP deve ser individualizado e feito por profissionais especializados. A equipe médica pode incluir: Ginecologista, Endocrinologista, Nutricionista e Dermatologista.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 15),
              const Center(
                child: Text(
                  '🤰 SOP e fertilidade',
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
                'A SOP pode dificultar a ovulação, mas não significa infertilidade definitiva. Muitas mulheres com SOP engravidam com acompanhamento e tratamento adequado. A combinação de alimentação saudável, exercícios físicos e medicamentos pode restaurar a ovulação. Em alguns casos, pode ser necessário recorrer a técnicas de reprodução assistida, como a fertilização in vitro (FIV).',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
