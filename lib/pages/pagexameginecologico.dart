// Importe o novo widget
import 'package:arthemisapp/widgets/info_bullet.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:arthemisapp/widgets/secinfo_bullet.dart';
import 'package:flutter/material.dart';

class PagExames extends StatelessWidget {
  const PagExames({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MeuAppBar(titulo: 'Exames Ginecológicos', mostrarLogo: true),
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
                  'Exames Ginecológicos Essenciais',
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
                  'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/exame-ginecologico.webp',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 25),

              const Text(
                '  Os exames ginecológicos são fundamentais para garantir a saúde íntima da mulher em todas as fases da vida. Eles permitem detectar precocemente diversas condições, monitorar o sistema reprodutivo e orientar tratamentos eficazes. ',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  '👩‍⚕️ Principais exames e orientações ',
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

              //1.
              const Text(
                '1.Papanicolau (Colpocitologia Oncótica)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(height: 10),

              const SecinfoBullet(
                label: 'Objetivo: ',
                text:
                    'Coleta de células do colo do útero com auxílio do espéculo. As células são analisadas em laboratório.',
              ),
              const SecinfoBullet(
                label: 'Como é feito: ',
                text:
                    'Detectar células anormais no colo do útero que possam indicar infecções, lesões pré-cancerosas ou câncer cervical.',
              ),

              //freq
              const Text(
                'Frequência Recomendada:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              //inicio
              const InfoBullet(
                label: 'Início: ',
                text: 'aos 21 anos ou após o início da vida sexual',
              ),
              // rep
              const InfoBullet(
                label: 'Repetição:',
                text: 'a cada 3 anos, se os resultados forem normais.',
              ),
              // 30 anos
              const InfoBullet(
                label: 'A partir dos 30 anos:',
                text:
                    'pode ser feito a cada 5 anos, se combinado com o teste de HPV.',
              ),
              // faixa etária
              const InfoBullet(
                label: 'Faixa etária:',
                text: ' dos 25 aos 64 anos (segundo diretrizes brasileiras).',
              ),

              // 2.
              SizedBox(height: 15),
              const Text(
                '2. Mamografia',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(height: 10),

              const SecinfoBullet(
                label: 'Objetivo: ',
                text:
                    'Detectar a presença do vírus HPV de alto risco, principal responsável por lesões pré-cancerosas e câncer de colo do útero.',
              ),
              const SecinfoBullet(
                label: 'Como é feito: ',
                text:
                    'Coleta semelhante ao Papanicolau, com análise laboratorial do material genético do HPV.',
              ),

              //freq
              const Text(
                'Frequência Recomendada: (segundo novas diretrizes do SUS)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              //inicio
              const InfoBullet(
                label: 'Início: ',
                text: 'Aos 25 anos para mulheres com vida sexual ativa',
              ),
              // rep
              const InfoBullet(
                label: 'Repetição:',
                text: ' A cada 5 anos, se o resultado for negativo',
              ),
              // 30 anos
              const InfoBullet(
                label: 'Substitui o Papanicolau',
                text:
                    'como método primário de rastreio para o câncer do colo do útero.',
              ),
              // faixa etária
              const SecinfoBullet(
                label: 'Indicação:',
                text: ' Mulheres de 25 a 64 anos.',
              ),

              // 3.
              SizedBox(height: 15),
              const Text(
                '3. Ultrassonografia Pélvica e Transvaginal',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(height: 10),

              SizedBox(height: 15),
              const SecinfoBullet(
                label: 'Objetivo: ',
                text:
                    'Detectar a presença do vírus HPV de alto risco, principal responsável por lesões pré-cancerosas e câncer de colo do útero.',
              ),
              const SecinfoBullet(label: 'Como é feito: ', text: ''),
              const InfoBullet(
                label: 'Pélvica:',
                text:
                    'realizada com o transdutor sobre o abdômen, com a bexiga cheia',
              ),
              const InfoBullet(
                label: 'Transvaginal:',
                text:
                    'introdução de um transdutor fino na vagina, oferecendo imagens mais detalhadas.',
              ),

              //freq
              const SecinfoBullet(
                label: 'Frequência:',
                text:
                    'Conforme indicação médica, de acordo com sintomas ou acompanhamento de condições específicas.',
              ),
              const SizedBox(height: 15),

              //4.
              SizedBox(height: 15),
              const Text(
                '4. Ultrassom de Mamas',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(height: 10),

              const SecinfoBullet(
                label: 'Objetivo: ',
                text:
                    'Avaliar alterações nas mamas, especialmente em mulheres com mamas densas ou histórico familiar de câncer de mama.',
              ),
              const SecinfoBullet(
                label: 'Como é feito: ',
                text:
                    'Aplicação de gel sobre as mamas e uso de um transdutor que emite ondas sonoras para criar imagens dos tecidos mamários.',
              ),

              // faixa etária
              const SecinfoBullet(
                label: 'Indicação:',
                text:
                    ' Complementar à mamografia, especialmente em casos suspeitos ou em mulheres jovens.',
              ),

              //5.
              SizedBox(height: 15),
              const Text(
                '5. Pesquisa de Infecções Sexualmente Transmissíveis (ISTs)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(height: 10),

              const SecinfoBullet(
                label: 'Objetivo: ',
                text:
                    'Diagnosticar infecções como HIV, sífilis, hepatites B e C, clamídia, gonorreia, entre outras.',
              ),
              const SecinfoBullet(label: 'Como é feito: ', text: ''),
              const InfoBullet(
                label: '',
                text: 'Testes rápidos (resultado em até 30 minutos).',
              ),
              const InfoBullet(
                label: '',
                text:
                    'Coleta de secreções ou exames laboratoriais específicos.',
              ),
              const InfoBullet(
                label: '',
                text:
                    'Indicado para todas as faixas etárias com vida sexual ativa.',
              ),

              // indicação
              const SecinfoBullet(
                label: 'Indicação:',
                text: ' Todas as faixas etárias com vida sexual ativa.',
              ),

              //6.
              SizedBox(height: 15),
              const Text(
                '6. Exame de Sangue',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(height: 10),

              const SecinfoBullet(
                label: 'Objetivo: ',
                text:
                    ' Avaliar saúde geral, como níveis hormonais, anemia, tireoide, colesterol, glicose, deficiências nutricionais e presença de infecções.',
              ),

              // indicação
              const SecinfoBullet(
                label: 'Indicação:',
                text:
                    'Parte da rotina ginecológica e ajustado conforme sintomas e faixa etária.',
              ),

              //7.
              SizedBox(height: 15),
              const Text(
                '7. Autoexame das Mamas',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(height: 10),

              const SecinfoBullet(
                label: 'Objetivo: ',
                text:
                    'O autoexame é uma forma simples e importante de conhecer melhor o próprio corpo e perceber possíveis alterações. Tem como objetivo, detectar alterações como nódulos, inchaços ou mudanças na textura da pele.',
              ),

              //freq
              const SecinfoBullet(
                label: 'Frequência:',
                text:
                    ' Mensal, preferencialmente alguns dias após a menstruação.',
              ),

              // importante
              const SecinfoBullet(
                label: 'Importante:', // O primeiro negrito
                text:
                    ' Não substitui os exames clínicos e de imagem. Caso perceba qualquer alteração, ', // O texto normal
                boldTextEnd:
                    'procure um(a) profissional da saúde.', // O segundo negrito
              ),

              //periodicidade
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  '⏱️ Periodicidade e Idades Recomendadas',
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

              //adolescente
              const SecinfoBullet(
                label: 'Adolescência (até 20 anos): ',
                text: 'Foco em orientação sexual e prevenção de ISTs.',
              ),

              //25/64
              const SecinfoBullet(
                label: '25 a 64 anos:',
                text:
                    'Teste de DNA-HPV a cada 5 anos, como exame de rastreio primário',
              ),

              //30/40
              const SecinfoBullet(
                label: '30 a 40 anos: ',
                text:
                    'Caso não tenha acesso ao DNA-HPV, o Papanicolau segue sendo feito a cada 3 anos.',
              ),

              //40+
              const SecinfoBullet(
                label: '40 anos ou mais:',
                text:
                    'Mamografia a cada 2 anos. Exames laboratoriais e de imagem conforme histórico e sintomas.',
              ),

              //Sinais
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  '⚠️ Sinais de Alerta para Procurar um Ginecologista',
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

              const InfoBullet(label: '', text: 'Irregularidades menstruais.'),

              const InfoBullet(label: '', text: 'Dores na região pélvica.'),

              const InfoBullet(
                label: '',
                text: 'Corrimento com cor, odor ou textura anormal.',
              ),

              const InfoBullet(label: '', text: 'Dor nas relações sexuais.'),

              const InfoBullet(label: '', text: 'Dificuldade para engravidar.'),

              const InfoBullet(label: '', text: 'Nódulos ou dor nas mamas.'),

              const InfoBullet(
                label: '',
                text: 'Sangramentos fora do ciclo menstrual.',
              ),

              const InfoBullet(label: '', text: 'Cólicas menstruais intensas.'),
            ],
          ),
        ),
      ),
    );
  }
}
