import 'package:arthemisapp/widgets/info_bullet.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:flutter/material.dart';

class PagCesaria extends StatelessWidget {
  const PagCesaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MeuAppBar(titulo: 'Cesárea vs Parto Normal', mostrarLogo: true),
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
                  'Cesárea vs Parto Normal: Prós, Contras e Escolhas',
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
                  'https://static.vecteezy.com/system/resources/previews/010/791/244/non_2x/ultrasound-of-a-pregnant-woman-vector.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              const Text(
                'A escolha entre parto normal e cesárea é um tema muito importante na vida de quem está esperando um bebê. Mas essa decisão deve ser baseada em informações de qualidade e orientação médica, para garantir o melhor para a saúde da mãe e do bebê.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  '🤰 Diferenças entre Cesárea e Parto Normal',
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

              //parto normal
              const InfoBullet(
                label: 'Parto Normal:',
                text:
                    'O bebê nasce pela via vaginal, geralmente após o início espontâneo do trabalho de parto. Pode envolver menos intervenções médicas e promove uma recuperação mais rápida para a mãe.',
              ),
              //cesaria
              const InfoBullet(
                label: 'Cesárea:',
                text:
                    ' uma cirurgia que retira o bebê do útero através de uma incisão no abdômen. Normalmente é indicada em casos de risco para a mãe ou para o bebê, mas também pode ser planejada.',
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/gravidas.jpg',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const Center(
                child: Text(
                  '\n❗Vantagens e Desvantagens de Cada Tipo de Parto',
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
                'Parto Normal',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '1. Vantagens:',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '• Recuperação mais rápida e menos dolorosa;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Menor risco de complicações cirúrgicas e infecções;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Melhor estímulo para o aleitamento materno precoce;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Fortalecimento da imunidade do bebê pela exposição à microbiota vaginal.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Text(
                '2. Desvantagens:',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '• Trabalho de parto pode ser longo e exaustivo;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Pode ocorrer necessidade de intervenções (como fórceps) em casos específicos;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Risco de lacerações vaginais em alguns casos;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Text(
                'Cesárea',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '1. Vantagens:',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '• Procedimento programado, podendo trazer mais previsibilidade para algumas famílias;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Útil em situações de emergência, garantindo a segurança de mãe e bebê;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const Text(
                '\n2. Desvantagens:',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '• Maior risco de infecções e complicações cirúrgicas;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Recuperação mais lenta e dolorosa;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Maior chance de problemas respiratórios para o bebê;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                '• Aumento do risco de complicações em gestações futuras (como placenta prévia e ruptura uterina);',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Center(
                child: Text(
                  '📚 O que dizem as Diretrizes do Ministério da Saúde?',
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
                'De acordo com as Diretrizes Nacionais de Assistência ao Parto Normal e as Diretrizes de Atenção à Gestante: a Operação Cesariana, o parto normal deve ser incentivado sempre que possível. A cesárea deve ser reservada para situações em que há uma real necessidade médica. Essas diretrizes reforçam:',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Text(
                '• A importância da informação clara para as mulheres sobre seus direitos e opções de parto;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const Text(
                '• O papel dos profissionais de saúde em promover o parto normal seguro e respeitoso;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const Text(
                '• A redução de cesáreas desnecessárias como política de saúde pública;',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const Center(
                child: Text(
                  '\n🩺 O que os especialistas falam?',
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
                'Médicos ginecologistas e obstetras destacam que o parto normal oferece benefícios para a mãe e o bebê a longo prazo. No entanto, reconhecem que em alguns casos a cesárea é a melhor e mais segura opção — mas sempre baseada em critérios médicos claros.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                'Segundo o Conselho Regional de Medicina do Paraná, a escolha pelo tipo de parto deve ser feita junto com a equipe médica, levando em conta os riscos, benefícios e as condições individuais de cada gestante.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/04/gravidez.jpg',
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
