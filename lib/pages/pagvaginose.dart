import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/info_bullet.dart';

class PagVaginose extends StatelessWidget {
  const PagVaginose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Usando nossa AppBar customizada.
      // Note que não passamos 'mostrarLogo', então ela exibe apenas o título.
      appBar: MeuAppBar(titulo: 'Candidíase e Vaginose', mostrarLogo: true),

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
                'Candidíase e Vaginose Bacteriana',
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
                  'https://st4.depositphotos.com/5499914/22108/i/600/depositphotos_221089186-stock-photo-pink-ribbon-stethoscope-pink-background.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              const Center(
                child: Text(
                  'Candidíase e Vaginose Bacteriana: Entenda as Diferenças, Sintomas e Cuidados\n',
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
                '  As infecções vaginais são comuns ao longo da vida da mulher e podem causar incômodos físicos e emocionais. Duas das mais frequentes são a candidíase vaginal e a vaginose bacteriana. Apesar de apresentarem sintomas parecidos, suas causas, tratamentos e formas de prevenção são bem diferentes. Conhecer essas diferenças é essencial para o cuidado com a saúde íntima.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const Text(
                '\n🌺 O que é Candidíase Vaginal?\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '  A candidíase é uma infecção causada por fungos, principalmente o Candida albicans, que vive naturalmente no organismo, mas pode se multiplicar em excesso sob certas condições.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const Text(
                '\nSintomas mais comuns',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              const InfoBullet(
                label: '',
                text: 'Coceira intensa na região íntima',
              ),
              const InfoBullet(
                label: '',
                text: 'Ardência ao urinar ou durante a relação sexual',
              ),
              const InfoBullet(
                label: '',
                text:
                    'Corrimento branco e espesso, semelhante a leite coalhado',
              ),
              const InfoBullet(
                label: '',
                text: 'Vermelhidão e inchaço da vulva',
              ),

              const Text(
                '\nCausas e Fatores de Risco',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              const InfoBullet(label: '', text: 'Uso de antibióticos'),

              const InfoBullet(
                label: '',
                text: 'Roupas muito apertadas ou sintéticas',
              ),

              const InfoBullet(label: '', text: 'Diabetes descontrolada'),

              const InfoBullet(label: '', text: 'Gravidez'),

              const InfoBullet(label: '', text: 'Estresse ou baixa imunidade'),

              const Text(
                '\nTratamento',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              const InfoBullet(
                label: '',
                text:
                    'Uso de antifúngicos, como fluconazol (oral) ou óvulos vaginais antifúngicos',
              ),

              const InfoBullet(label: '', text: 'Higiene íntima adequada'),

              const InfoBullet(
                label: '',
                text: 'Evitar duchas vaginais e produtos irritantes',
              ),

              const Text(
                '\n🌷 O que é Vaginose Bacteriana?\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'A vaginose bacteriana é causada por um desequilíbrio da flora vaginal, onde há redução dos lactobacilos (bactérias “boas”) e proliferação de bactérias como a Gardnerella vaginalis.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const Text(
                '\nSintomas mais comuns',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              const InfoBullet(
                label: '',
                text: 'Corrimento acinzentado ou esbranquiçado',
              ),
              const InfoBullet(
                label: '',
                text:
                    'Odor forte e desagradável, semelhante a peixe (especialmente após relações sexuais)',
              ),
              const InfoBullet(
                label: '',
                text:
                    'Leve ardência ou coceira (menos frequente que na candidíase)',
              ),

              const Text(
                '\nCausas e Fatores de Risco',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              const InfoBullet(label: '', text: 'Múltiplos parceiros sexuais'),

              const InfoBullet(label: '', text: 'Uso de duchas vaginais'),

              const InfoBullet(label: '', text: 'Tabagismo'),

              const InfoBullet(
                label: '',
                text: 'Uso de anticoncepcionais intrauterinos (DIU)',
              ),

              const InfoBullet(
                label: '',
                text: 'Higiene íntima excessiva ou inadequada',
              ),

              const Text(
                '\nTratamento',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              const InfoBullet(
                label: '',
                text:
                    'Antibióticos como metronidazol ou clindamicina (uso oral ou vaginal)',
              ),

              const InfoBullet(
                label: '',
                text:
                    'Reposição da flora vaginal (em alguns casos, com orientação médica',
              ),

              const Text(
                '\n🌸 Diferenças Principais Entre Candidíase e Vaginose\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 20.0,
                  dataRowHeight: 60.0,
                  headingRowColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) => Colors.pink.shade50,
                  ),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Característica',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Candidíase',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Vaginose Bacteriana',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Causa')),
                        DataCell(Text('Fungo (Candida albicans)')),
                        DataCell(Text('Bactéria (Gardnerella vaginalis)')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Corrimento')),
                        DataCell(Text('Branco, espesso, tipo coalhado')),
                        DataCell(Text('Cinza-claro, fino, com mau odor')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Odor')),
                        DataCell(Text('Geralmente sem odor')),
                        DataCell(Text('Odor forte de peixe')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Coceira')),
                        DataCell(Text('Muito comum')),
                        DataCell(Text('Raramente presente')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Tratamento')),
                        DataCell(Text('Antifúngicos')),
                        DataCell(Text('Antibióticos')),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                '\n🛡️ Prevenção das Infecções Vaginais\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const InfoBullet(
                label: '',
                text:
                    'Usar roupas íntimas de algodão e evitar roupas apertadas',
              ),

              const InfoBullet(
                label: '',
                text:
                    'Evitar duchas vaginais e produtos perfumados na região íntima',
              ),

              const InfoBullet(
                label: '',
                text: 'Dormir sem calcinha para melhor ventilação',
              ),

              const InfoBullet(
                label: '',
                text:
                    'Ter higiene íntima adequada (lavar só a parte externa com água e sabão neutro)',
              ),

              const InfoBullet(
                label: '',
                text:
                    'Ter uma alimentação equilibrada e manter a imunidade saudável',
              ),

              const InfoBullet(
                label: '',
                text: 'Usar preservativo nas relações sexuais',
              ),

              const Text(
                '\n🩺 Quando procurar ajuda médica?\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '  Em qualquer sinal de alteração vaginal — como coceira, corrimento anormal ou odor forte — o ideal é procurar um(a) ginecologista. Só o profissional poderá fazer o diagnóstico correto e indicar o tratamento adequado, evitando automedicação e complicações futuras.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
