import 'package:arthemisapp/widgets/info_bullet.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:arthemisapp/widgets/secinfo_bullet.dart';
import 'package:flutter/material.dart';

class PagCistoNoOvario extends StatelessWidget {
  const PagCistoNoOvario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Usando nossa AppBar customizada.
      // Note que não passamos 'mostrarLogo', então ela exibe apenas o título.
      appBar: MeuAppBar(titulo: 'Cisto No Ovario', mostrarLogo: true),

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
              const Center(
                child: Text(
                  'Cistos Ovarianos: Tipos, Sintomas e Tratamentos',
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
                  'https://blog.oya.care/wp-content/uploads/2023/04/cisto-no-ovariotratamento-bege-1024x639.webp',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              const Text(
                '  Os cistos de ovário são uma condição bastante comum entre mulheres de todas as idades. Eles podem surgir desde a vida intrauterina até o período pós-menopausa, e muitas vezes passam despercebidos, sem sintomas aparentes. No entanto, em alguns casos, podem causar desconforto, alterações no ciclo menstrual e até complicações mais sérias.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  '🩺 O que é um cisto no ovário?',
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
                '  Cistos no ovário são bolsas cheias de líquido (ou, em alguns casos, sangue ou tecido) que se formam dentro ou sobre os ovários. Eles podem surgir em qualquer fase da vida — desde a infância até após a menopausa — mas são mais comuns durante a idade fértil. \n   A maioria dos cistos é benigna (não cancerígena) e desaparece sozinha após alguns ciclos menstruais. Mesmo assim, o acompanhamento ginecológico é essencial para evitar complicações e garantir um diagnóstico preciso.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Center(
                child: Text(
                  '🔍 Como são identificados?',
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
                '  A detecção costuma ser feita por meio de exames de imagem, como a ultrassonografia transvaginal ou abdominal. Em alguns casos, podem ser solicitados exames de sangue ou até uma ressonância magnética, principalmente quando há dúvida sobre a natureza do cisto. \n   Quando necessário, o médico pode realizar uma laparoscopia — um procedimento minimamente invasivo que permite visualizar o cisto e, se preciso, removê-lo.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Center(
                child: Text(
                  '🧬 Quais são os sintomas?',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              const Text(
                '  Algumas mulheres não apresentam sintomas, mas outras podem sentir:',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const InfoBullet(
                label: '',
                text:
                    'Dor pélvica ou abdominal (leve, intensa ou em forma de pressão)',
              ),
              const InfoBullet(
                label: '',
                text:
                    'Menstruação irregular (sangramentos intensos ou ausência de menstruação)',
              ),
              const InfoBullet(label: '', text: 'Inchaço abdominal'),
              const InfoBullet(
                label: '',
                text: 'Dor durante a relação sexual (dispareunia)',
              ),
              const InfoBullet(
                label: '',
                text:
                    'Sensação de pressão na bexiga ou intestino (o cisto pode pressionar outros órgãos)',
              ),
              const InfoBullet(
                label: '',
                text: 'Dificuldade para engravidar (em alguns casos)',
              ),

              const SizedBox(height: 15),

              const Center(
                child: Text(
                  '🩸 Tipos de cistos mais comuns',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const InfoBullet(
                label: 'Cisto folicular: ',
                text: 'geralmente desaparece sozinho em até 6 meses.',
              ),
              const InfoBullet(
                label: 'Cisto de corpo lúteo:',
                text: ' aparece após a ovulação e pode conter sangue.',
              ),
              const InfoBullet(
                label: 'Endometrioma:',
                text:
                    ' ligado à endometriose, contém tecido semelhante ao do útero.',
              ),
              const InfoBullet(
                label: 'Cisto teca-luteínico: ',
                text: 'comum em tratamentos de fertilidade.',
              ),
              const InfoBullet(
                label: 'Cisto adenoma:',
                text: ' pode ser maior e persistente, exigindo intervenção.',
              ),
              const InfoBullet(
                label: 'Cisto dermoide (teratoma):',
                text: ' pode conter tecidos como cabelo, dentes ou ossos.',
              ),

              const SizedBox(height: 15),

              const Center(
                child: Text(
                  '🩹 Quais são as opções de tratamento?',
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
                '  O tratamento vai depender do tipo, tamanho e sintomas do cisto, além da idade e desejo reprodutivo da paciente. As principais opções incluem:',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),

              const InfoBullet(
                label: 'Medicamentos: . ',
                text:
                    'O uso de anticoncepcionais pode ajudar a regular os hormônios e evitar a formação de novos cistos. Em casos específicos, medicamentos como análogos de GnRH também podem ser utilizados, sempre sob orientação médica',
              ),
              const InfoBullet(
                label: 'Aspiração por punção: ',
                text:
                    'Consiste em drenar o líquido do cisto com uma agulha. Pode aliviar sintomas, mas têm maior risco de recorrência.',
              ),
              const InfoBullet(
                label: 'Cirurgia laparoscópica ou robótica: ',
                text:
                    'Quando o cisto é grande, persistente ou causa sintomas fortes, a cirurgia pode ser indicada. É um procedimento minimamente invasivo.',
              ),
              const InfoBullet(
                label: 'Cirurgia abdominal (laparotomia):',
                text:
                    ' Indicada em casos de cistos muito grandes ou suspeita de câncer. A cirurgia é mais ampla e permite avaliar a possível disseminação de células malignas.',
              ),

              SecinfoBullet(
                label: '', // O negrito inicial
                text:
                    'Muitos cistos desaparecem sozinhos. O médico pode apenas acompanhar com exames ao longo de alguns ciclos menstruais. Por isso, sempre que apresentar sintomas, é muito importante buscar a avaliação de um ',
                boldTextEnd: 'profissional na área da saúde.',
              ),

              const Center(
                child: Text(
                  '💗 Cuide da sua saúde com atenção e carinho',
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
                '  Se você percebeu mudanças no seu corpo, como dores diferentes, ciclos menstruais irregulares ou inchaço persistente, não ignore esses sinais. Mesmo que o cisto seja benigno, o cuidado preventivo é a melhor forma de manter sua saúde ginecológica em dia.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
