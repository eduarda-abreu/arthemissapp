// Importe o novo widget
import 'package:arthemisapp/widgets/info_bullet.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:flutter/material.dart';

class PagHPV extends StatelessWidget {
  const PagHPV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MeuAppBar(titulo: 'HPV ', mostrarLogo: true),
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
                  'HPV: Entenda, Previna-se e Cuide-se',
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
                  'https://sensavi.ua/storage/app/public/top-banner/February2023/KBglSfrn91sj9agDOivW.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              const Text(
                'O HPV é uma infecção muito comum e, na maioria das vezes, silenciosa. Mesmo assim, pode causar complicações sérias, como o câncer de colo do útero. Conhecer os riscos, formas de prevenção e a importância da vacina é essencial para cuidar da saúde sexual com responsabilidade e informação.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  '🦠 O que é a HPV?',
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
                'O Papilomavírus Humano (HPV) é um vírus que afeta a pele e as mucosas, sendo a infecção sexualmente transmissível (IST) mais comum no mundo. Existem mais de 200 tipos de HPV, e ele pode ser transmitido principalmente por contato direto com a pele ou mucosas infectadas, geralmente durante relações sexuais (vaginal, anal ou oral), mesmo quando a pessoa infectada não apresenta sintomas visíveis.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const Text(
                'O vírus também pode ser transmitido da mãe para o bebê durante o parto, em casos raros, e o uso de objetos contaminados (como toalhas íntimas) pode representar um risco muito baixo.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              //1.
              const Center(
                child: Text(
                  '\n🧬 Sintomas',
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
                'Na maioria das pessoas, a infecção pelo HPV é assintomática. O vírus pode permanecer inativo no organismo por meses ou anos sem causar sinais visíveis. Porém, quando o sistema imunológico está enfraquecido, o vírus pode se multiplicar e causar lesões.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Os sintomas podem aparecer de 2 a 8 meses após o contato, mas em alguns casos, demoram até 20 anos. Os sintomas são mais frequentes em gestantes e pessoas com imunidade baixa.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/sintomas1-500x410.jpg',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const Center(
                child: Text(
                  '\n🩸 Tipos de Lesões',
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

              // lesoes clinicas
              const InfoBullet(
                label: 'Lesões Clínicas:',
                text:
                    'São verrugas na região genital e anal, conhecidas popularmente como “crista de galo” ou “figueira”. Essas verrugas são causadas por tipos de HPV de baixo risco oncogênico, ou seja, que raramente evoluem para câncer. Elas podem ser únicas ou múltiplas, e normalmente não causam dor, mas podem coçar.',
              ),
              // lesoes subclinicas
              const InfoBullet(
                label: 'Lesões Subclínicas:',
                text:
                    'Não são visíveis a olho nu e podem afetar diversas áreas como vulva, vagina, colo do útero, pênis, ânus, boca e garganta. Essas lesões podem ser causadas tanto por tipos de HPV de baixo quanto de alto risco para o desenvolvimento de câncer.',
              ),
              // papilomatose respiratória recorrente
              const InfoBullet(
                label: 'Papilomatose Respiratória Recorrente:',
                text:
                    'É uma condição rara em que crianças infectadas no parto desenvolvem verrugas nas cordas vocais e na laringe.',
              ),

              const Center(
                child: Text(
                  '\n💉 Vacinação',
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
                ' A vacina contra o HPV é a forma mais eficaz de prevenção e está disponível gratuitamente no SUS. Ela protege contra os tipos 6, 11, 16 e 18 – sendo os dois últimos os principais responsáveis pelo câncer de colo do útero.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Text(
                'Quem pode se vacinar pelo SUS:',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Text(
                '• Meninas e meninos de 9 a 14 anos;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Pessoas de 9 a 45 anos vivendo com HIV, transplantadas ou com câncer;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Vítimas de violência sexual, de 15 a 45 anos, não vacinadas;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Usuários de PrEP (Profilaxia Pré-Exposição ao HIV), de 15 a 45 anos;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Pacientes com Papilomatose Respiratória Recorrente, a partir dos 2 anos.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://abiogene.ir/wp-content/uploads/2023/07/hpv-cancer-1024x683.jpg',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const Text(
                'Para receber a vacina, é importante apresentar comprovante da condição de saúde, como receita médica ou declaração de uso de medicamento.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Center(
                child: Text(
                  '\n🩹 Outras Medidas de Prevenção\n',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              // preservativo
              const InfoBullet(
                label: 'Preservativo:',
                text:
                    'Reduz o risco de transmissão, mas não elimina totalmente, pois o vírus pode estar presente em regiões não cobertas pela camisinha.',
              ),
              // exames regulares
              const InfoBullet(
                label: 'Exames Regulares:',
                text:
                    'O rastreamento do câncer de colo do útero é fundamental. Até recentemente, era feito principalmente pelo exame de Papanicolau, que detecta alterações celulares. No entanto, a partir de 2024, o SUS passou a adotar o teste de DNA-HPV como exame primário para mulheres de 25 a 64 anos, sendo mais sensível e eficaz na detecção precoce de lesões causadas pelo HPV de alto risco.',
              ),

              const Center(
                child: Text(
                  '\n🧬 DNA-HPV – O que é e por que é importante?\n',
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
                'O teste de DNA-HPV é um exame que detecta diretamente a presença do material genético (DNA) dos tipos de HPV de alto risco oncogênico, antes mesmo que apareçam alterações nas células.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Text(
                'Vantagens:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '• Maior sensibilidade do que o Papanicolau;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Detecta infecções antes que evoluam para lesões;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Permite rastreamento com intervalos mais longos (a cada 5 anos), se o resultado for negativo.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Text(
                'Indicação:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '• Mulheres de 25 a 64 anos, mesmo sem sintomas;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Realizado gratuitamente no SUS como parte do rastreamento do câncer do colo do útero.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Center(
                child: Text(
                  '\n🩺 Acompanhamento Médico\n',
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
                'Em caso de diagnóstico de HPV, o tratamento deve ser orientado por um(a) profissional da saúde. Dependendo do tipo de lesão e localização, pode incluir:',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Text(
                '• Medicamentos tópicos;',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Crioterapia (congelamento);',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Eletrocauterização (queima);',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Cirurgia (em casos específicos).',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/utero.jpg',
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
