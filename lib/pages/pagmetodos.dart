// Importe o novo widget
import 'package:arthemisapp/widgets/info_bullet.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:flutter/material.dart';

class PagMetodos extends StatelessWidget {
  const PagMetodos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MeuAppBar(titulo: 'Métodos Contraceptivos ', mostrarLogo: true),
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
                  'Métodos Contraceptivos: Escolha o Melhor para Você!',
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
                  'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/03/metodos-contraceptivos-para-evitar-gravidez.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              const Text(
                '  A contracepção é essencial para quem deseja evitar uma gravidez não planejada e manter o controle sobre a própria saúde reprodutiva. Com diversas opções disponíveis, é importante conhecer os diferentes métodos contraceptivos para encontrar aquele que melhor se adapta ao seu estilo de vida e necessidades.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  '🩺 Principais Tipos de Métodos Contraceptivos',
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
                '1. Métodos Hormonais',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '  Esses métodos atuam alterando os hormônios do corpo para evitar a ovulação. São altamente eficazes quando usados corretamente, pois regulam os níveis hormonais para impedir que os ovários liberem óvulos.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              //pilula anticoncepcional
              const InfoBullet(
                label: 'Pílula Anticoncepcional:',
                text:
                    'Tomada diariamente, impede a ovulação e altera o muco cervical.',
              ),
              // injecao
              const InfoBullet(
                label: 'Injeção Contraceptiva',
                text: 'Aplicada mensalmente ou a cada três meses.',
              ),
              // implante
              const InfoBullet(
                label: 'Implante Subcutâneo:',
                text:
                    'Pequena haste inserida sob a pele do braço com duração de até 3 anos.',
              ),
              //adesivo
              const InfoBullet(
                label: 'Adesivo e Anel Vaginal:',
                text:
                    'Libera hormônios gradualmente e deve ser trocado regularmente.',
              ),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://i.pinimg.com/736x/02/5f/9c/025f9c04e257bd26e9a3f3508b1c7dce.jpg',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // 2.
              SizedBox(height: 15),
              const Text(
                '2. Métodos de Barreira',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '  Criam uma barreira física para impedir a passagem dos espermatozoides e, em alguns casos, também oferecem proteção contra infecções sexualmente transmissíveis (DSTs). São opções acessíveis, de fácil uso e sem interferência hormonal, tornando-se alternativas interessantes para quem deseja evitar o uso de hormônios sintéticos.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              //camisinha
              const InfoBullet(
                label: 'Camisinha Masculina e Feminina: ',
                text:
                    'Além de prevenir a gravidez, são os únicos métodos que também oferecem proteção contra infecções sexualmente transmissíveis, como HIV e sífilis.',
              ),
              // diafragma
              const InfoBullet(
                label: 'Diafragma: ',
                text:
                    ' Dispositivo de silicone flexível inserido na vagina antes da relação sexual, funcionando como uma barreira física contra os espermatozoides.',
              ),
              // espermicidas
              const InfoBullet(
                label: 'Espermicidas:',
                text:
                    'Substâncias químicas em formato de gel, creme ou óvulo vaginal que imobilizam ou eliminam os espermatozoides.',
              ),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/05/1325394-1024x682.webp',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // 3.
              SizedBox(height: 15),
              const Text(
                '3. Dispositivos Intrauterinos (DIU)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '  Os dispositivos intrauterinos (DIUs) são pequenos dispositivos em formato de “T” inseridos no útero por um profissional de saúde. Eles oferecem um método contraceptivo de longa duração e alta eficácia, sem a necessidade de manutenção frequente.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              //cobre
              const InfoBullet(
                label: 'DIU de Cobre:',
                text:
                    'Livre de hormônios e pode durar até 10 anos. Ele funciona liberando íons de cobre, que alteram o ambiente do útero e tornam a sobrevivência dos espermatozoides inviável, impedindo a fecundação.',
              ),
              // hormonal
              const InfoBullet(
                label: 'DIU Hormonal: ',
                text:
                    'Libera pequenas quantidades de hormônios diretamente no útero, tornando o muco cervical mais espesso, afinando o endométrio e dificultando a ovulação. Pode durar entre 3 e 5 anos e costuma reduzir o fluxo menstrual e cólicas. ',
              ),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://drrodrigoferrarese.com.br/wp-content/uploads/2021/01/diferenca-diu-de-cobre-mirena.png',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4.
              SizedBox(height: 15),
              const Text(
                '4. Métodos Naturais',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '  Os métodos naturais dependem da observação e monitoramento do ciclo menstrual para evitar relações durante os períodos férteis. Ao entender melhor o funcionamento do corpo e o ciclo reprodutivo, é possível estimar os dias em que a mulher pode engravidar. No entanto, esses métodos exigem atenção e disciplina, e a eficácia pode ser menor se não forem seguidos corretamente.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              //tabelinha
              const InfoBullet(
                label: 'Tabelinha: ',
                text:
                    'Baseada na contagem dos dias do ciclo menstrual, a mulher deve registrar a duração dos ciclos menstruais por alguns meses para prever os dias férteis.',
              ),
              // temperatura
              const InfoBullet(
                label: 'Temperatura Basal e Muco Cervical:',
                text:
                    ' A temperatura basal aumenta ligeiramente após a ovulação, e o muco cervical muda de consistência durante o ciclo. Monitorar esses sinais diariamente ajuda a identificar o período fértil, mas exige disciplina para garantir eficácia.',
              ),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://pt.quizur.com/_image?href=https%3A%2F%2Fimg.quizur.com%2Ff%2Fimg5defed9767f379.14841779.jpg%3FlastEdited%3D1576005033&w=400&h=400&f=webp',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5.
              SizedBox(height: 15),
              const Text(
                '5. Métodos Permanentes',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                '  Os métodos permanentes são opções para quem tem certeza de que não deseja ter filhos no futuro. Eles são irreversíveis e devem ser considerados com muito cuidado e reflexão, pois não há possibilidade de reverter o procedimento depois de realizado.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              //laqueadura
              const InfoBullet(
                label: 'Laqueadura:',
                text:
                    'Cirurgia realizada nas mulheres para bloquear ou cortar as trompas de Falópio, impedindo que os óvulos se encontrem com os espermatozoides. É um procedimento irreversível.',
              ),
              // vasectomia
              const InfoBullet(
                label: 'Vasectomia:',
                text:
                    'Procedimento realizado nos homens, que consiste no corte ou bloqueio dos ductos deferentes, impedindo a liberação de espermatozoides. Também é considerada irreversível, embora haja possibilidade de reversão em alguns casos, o sucesso não é garantido.',
              ),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'lib/assets/images/vasectomia-laqueadura.png',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //finalizar
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  '🌷 Como Escolher o Melhor Método para Você?',
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
                '   A escolha do método contraceptivo ideal depende de fatores como saúde, estilo de vida e planos futuros. Consultar um profissional de saúde é essencial para encontrar a opção mais segura e eficaz para você. \n\n Lembre-se: Escolher um método contraceptivo é um passo importante para sua saúde e bem-estar. Informe-se, consulte um especialista e tome a melhor decisão para sua vida!',
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
