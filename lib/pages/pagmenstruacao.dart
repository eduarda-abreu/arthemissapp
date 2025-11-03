// Importe o novo widget
import 'package:arthemisapp/widgets/info_bullet.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:flutter/material.dart';

class PagMestruacao extends StatelessWidget {
  const PagMestruacao({super.key});

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
                  'Menstruação: Como Funciona o Ciclo Menstrual',
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
                child: Image.asset(
                  'lib/assets/images/menstruacao2.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              const Text(
                '  A menstruação ainda é um assunto cercado de tabus e dúvidas, principalmente para quem está passando por essa experiência pela primeira vez. Mas falar sobre menstruação é essencial, entender o que acontece durante o ciclo menstrual é um passo importante para cuidar da saúde e reconhecer as necessidades do próprio corpo.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  '🌹 O que é a Menstruação?',
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
                '  A menstruação é um processo natural que acontece no corpo da maioria das pessoas que têm útero. Ela faz parte do ciclo menstrual — um ciclo biológico que costuma durar entre 25 e 35 dias. Ao longo desse período, o corpo se prepara para uma possível gravidez. Caso não ocorra a fecundação, o organismo elimina a camada interna do útero (endométrio), que havia sido formada para receber um óvulo. Essa eliminação é o que conhecemos como menstruação. \n   O fluxo pode durar de 3 a 7 dias e, mesmo que pareça muito sangue, a quantidade eliminada gira em torno de 20 a 60ml por ciclo.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  'Quando ela começa?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'A primeira menstruação, chamada de menarca, costuma acontecer por volta dos 12 ou 13 anos, mas pode variar bastante. Algumas meninas menstruam aos 9, outras aos 15. Todas essas variações são normais, cada corpo tem seu próprio tempo.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              // fases do ciclo
              const Center(
                child: Text(
                  '🔄 Fases do Ciclo Menstrual',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'O ciclo menstrual é um processo natural que prepara o corpo feminino para uma possível gravidez. Ele é dividido em quatro fases principais:',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 10), // Espaço antes da lista
              // --- NOVA SEÇÃO ADICIONADA AQUI ---
              const Text(
                '1. Fase Menstrual:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              // Usando nosso widget reutilizável
              const InfoBullet(
                label: 'O que acontece:',
                text:
                    'É o início do ciclo, caracterizado pela descamação do endométrio (revestimento interno do útero) quando não ocorre fecundação.',
              ),
              const InfoBullet(label: 'Duração:', text: 'De 3 a 7 dias.'),
              const InfoBullet(
                label: 'Sintomas comuns:',
                text: 'Cólicas, fadiga e alterações de humor.',
              ),
              // --- FIM DA NOVA SEÇÃO ---
              const Text(
                '2. Fase Folicular:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const InfoBullet(
                label: 'O que acontece:',
                text:
                    'Inicia-se no primeiro dia da menstruação e continua até a ovulação. Nessa fase, os hormônios FSH e estrogênio estimulam o crescimento dos folículos ovarianos e a preparação do útero para uma possível gravidez.',
              ),
              const InfoBullet(
                label: 'Duração:',
                text: 'Variável, geralmente entre 10 e 22 dias.',
              ),
              const InfoBullet(
                label: 'Sintomas comuns:',
                text: 'Aumento de energia e bem-estar.',
              ),
              //fim seção 2
              const Text(
                '3. Ovulação:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const InfoBullet(
                label: 'O que acontece:',
                text:
                    'Por volta do 14º dia do ciclo, ocorre a liberação de um óvulo maduro do ovário.',
              ),
              const InfoBullet(
                label: 'Duração:',
                text: 'O óvulo permanece viável por cerca de 24 horas.',
              ),
              const InfoBullet(
                label: 'Sintomas comuns:',
                text:
                    'Aumento da temperatura corporal basal, muco cervical claro e elástico, e possível dor leve no abdômen.',
              ),
              //fim seção 3
              const Text(
                ' 4. Fase Lútea:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const InfoBullet(
                label: 'O que acontece:',
                text:
                    ' A progesterona aumenta, preparando o útero para uma possível gravidez. Se não houver a fecundação, o óvulo se desintegra e inicia-se nova menstruação.',
              ),
              const InfoBullet(label: 'Duração:', text: 'Cerca de 14 dias.'),
              const InfoBullet(
                label: 'Sintomas comuns:',
                text: 'Sensibilidade nos seios, inchaço e variações de humor.',
              ),
              //fim seção 4
              const SizedBox(height: 20),

              //Cor do sangue
              const SizedBox(height: 10),
              const Text(
                '🔄 Fases do Ciclo Menstrual',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'As variações na cor do sangue menstrual podem fornecer informações sobre a saúde menstrual:',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              // sangue 1
              const InfoBullet(
                label: 'Vermelho vivo:',
                text: 'Indica sangue recente e fluxo saudável.',
              ),

              //sangue 2
              const InfoBullet(
                label: 'Vermelho escuro ou bordô:',
                text: 'Sangue mais antigo, comum no final do ciclo.',
              ),

              //sangue 3
              const InfoBullet(
                label: 'Marrom claro ou escuro:',
                text:
                    'Sangue que demorou mais para ser expelido; geralmente normal.',
              ),

              //sangue 4
              const InfoBullet(
                label: 'Rosa:',
                text:
                    'Pode indicar baixos níveis de estrogênio ou início da gravidez; se persistente, consulte um médico.',
              ),

              //sangue 5
              const InfoBullet(
                label: 'Cinza:',
                text:
                    'Pode ser sinal de infecção; procure atendimento médico imediatamente.',
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'lib/assets/images/coresmentru.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 25),

              //Sintomas comuns
              const Center(
                child: Text(
                  '🩺 Sintomas Comuns',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '  Nem sempre menstruar é só “sangrar”. Muitas mulheres sentem cólicas, mudanças de humor, dores de cabeça, acne, inchaço e até vontade de comer chocolate desesperadamente! Isso pode acontecer tanto durante quanto alguns dias antes da menstruação — o famoso período da TPM (Tensão Pré-Menstrual).\n   Esses sintomas são causados por variações hormonais e afetam cada pessoa de forma diferente. Se eles forem muito intensos e atrapalharem sua rotina, é importante conversar com um médico.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              //Cólicas
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  '💐 Cólicas: por que elas existem',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '  As cólicas aparecem porque o útero se contrai para eliminar o tecido que não será mais usado. Essas contrações podem causar desconforto ou dor — especialmente nos primeiros dias. Compressas mornas, chás e exercícios leves podem ajudar, mas se a dor for forte, vale procurar orientação médica.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              //menstruação saudável?
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  '❔ Como saber se a menstruação está saudável?',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '  Uma menstruação saudável geralmente tem:',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              //ciclo
              const InfoBullet(
                label: '',
                text: 'Ciclo regular (entre 26 e 35 dias).',
              ),
              // sangramento
              const InfoBullet(
                label: '',
                text: 'Sangramento que dura de 3 a 7 dias.',
              ),
              //dor
              const InfoBullet(
                label: '',
                text: 'Pouca ou nenhuma dor intensa.',
              ),
              //cor
              const InfoBullet(
                label: '',
                text:
                    'Cor do sangue variando entre vermelho vivo e vinho, sem muitos coágulos.',
              ),
              //sintomas
              const InfoBullet(
                label: '',
                text: 'Poucos sintomas de TPM ou sintomas leves.',
              ),
              const Text(
                'Qualquer mudança brusca ou sangramento fora do ciclo merece atenção — seu corpo está sempre dando sinais!',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              //falar sobre
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  '💬 Falar sobre menstruação é um ato de cuidado',
                  textAlign:
                      TextAlign.center, // Centraliza o texto se quebrar linha
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '  Falar abertamente sobre menstruação é um passo importante para o autocuidado e a quebra de tabus. Compartilhar experiências, buscar informação de qualidade e ter acesso a produtos adequados são formas de cuidar do corpo e da mente.',
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
