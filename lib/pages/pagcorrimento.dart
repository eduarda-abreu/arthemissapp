import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/info_bullet.dart';

class PagCorrimento extends StatelessWidget {
  const PagCorrimento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Usando nossa AppBar customizada.
      // Note que não passamos 'mostrarLogo', então ela exibe apenas o título.
      appBar: MeuAppBar(titulo: 'Corrimento Vaginal', mostrarLogo: true),

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
                'Corrimento Vaginal',
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
                  'https://img.freepik.com/fotos-gratis/coisas-relacionadas-com-o-periodo-de-visualizacao-superior_23-2148163056.jpg?semt=ais_hybrid&w=740',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              const Center(
                child: Text(
                  'Corrimento Vaginal: O que é Normal e o que é Anormal\n',
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
                '\tO corrimento vaginal é uma secreção natural que ajuda a manter a saúde do sistema reprodutor feminino, agindo como uma defesa contra infecções e mantendo o pH vaginal equilibrado. No entanto, é importante saber diferenciar quando o corrimento é normal e quando pode indicar algum problema.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const Text(
                '\n✔️ O que é normal?\n',
                textAlign:
                    TextAlign.center, // Centraliza o texto se quebrar linha
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),

              const Text(
                '\tO corrimento normal varia de mulher para mulher, mas geralmente possui as seguintes características:\n',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const InfoBullet(
                label: 'Cor:',
                text: ' Transparente ou branco leitoso.',
              ),

              const InfoBullet(
                label: 'Consistência:',
                text:
                    ' Pode ser aquoso ou pegajoso, e tende a mudar ao longo do ciclo menstrual (mais fluido perto da ovulação).',
              ),

              const InfoBullet(
                label: 'Quantidade:',
                text:
                    ' Em quantidades pequenas a moderadas, dependendo da fase do ciclo menstrual.',
              ),

              const Text(
                '\n✖️ O que é anormal?\n',
                textAlign:
                    TextAlign.center, // Centraliza o texto se quebrar linha
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),

              const InfoBullet(label: 'Cor:', text: 'Amarelo, verde ou cinza.'),

              const InfoBullet(
                label: 'Consistência:',
                text:
                    'Espesso, com grumos (semelhante a queijo cottage) ou com bolhas.',
              ),

              const InfoBullet(
                label: 'Odor:',
                text: 'Forte, desagradável ou de “peixe podre”.',
              ),

              const InfoBullet(
                label: 'Sintomas Associados:',
                text:
                    'Coceira, ardência, dor ao urinar ou durante o sexo, inchaço vaginal.',
              ),

              const Text(
                '\n🩸 Causas de Corrimento Anormal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '\tO corrimento anormal pode ser causado por uma série de fatores, sendo as infecções e os desequilíbrios hormonais os mais comuns. Vamos explorar as principais causas:\n',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const Text(
                ' Infecções',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '\tAs infecções vaginais são uma das principais causas de corrimento anormal. As mais comuns incluem:\n',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const Text(
                ' 1. Vaginose Bacteriana(VB)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const InfoBullet(
                label: '',
                text:
                    'A Gardnerella vaginalis é uma bactéria naturalmente presente na flora vaginal, mas quando há desequilíbrio, ela pode se multiplicar, causando a vaginose bacteriana. Embora não seja uma infecção sexualmente transmissível (IST), a vaginose bacteriana pode ser mais comum em mulheres sexualmente ativas.',
              ),

              const InfoBullet(
                label: '',
                text:
                    'O sintoma mais característico é o corrimento de cor cinza, acompanhado de um odor forte de peixe, que é causado pela Gardnerella vaginalis devido à produção de compostos voláteis. Esse desequilíbrio no pH vaginal pode tornar a região mais suscetível a outras infecções.',
              ),

              const Text(
                ' 2. Candidíase Vaginal',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const InfoBullet(
                label: '',
                text:
                    'A candidíase, causada pelo fungo Candida, resulta em corrimento branco e espesso, semelhante a queijo cottage, acompanhado de coceira intensa e irritação.',
              ),

              const Text(
                ' 3. Tricomoníase',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const InfoBullet(
                label: '',
                text:
                    'Uma infecção sexualmente transmissível (IST) causada pelo parasita Trichomonas vaginalis, que leva a um corrimento amarelo ou verde com odor forte e, muitas vezes, dor durante o sexo.',
              ),

              const Text(
                ' 4. Clamídia e Gonorreia',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const InfoBullet(
                label: '',
                text:
                    'Também ISTs, causam corrimento anormal, geralmente amarelado ou esverdeado, e podem ser acompanhadas de dor pélvica, sangramentos e dor ao urinar.',
              ),

              const Text(
                '\nDesequilíbrios Hormonais',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '\tMudanças hormonais podem afetar a produção e a consistência do corrimento vaginal, especialmente em situações como:\n',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const InfoBullet(
                label: 'Gravidez: ',
                text:
                    'O aumento nos níveis de estrogênio pode causar um aumento no volume de corrimento, que geralmente é mais fino e transparente.',
              ),

              const InfoBullet(
                label: 'Uso de contraceptivos hormonais: ',
                text: 'Pode causar alterações no fluxo de corrimento vaginal.',
              ),

              const InfoBullet(
                label: 'Menopausa: ',
                text:
                    'A diminuição dos níveis de estrogênio pode causar ressecamento vaginal, levando a um corrimento mais escasso ou até a falta dele.',
              ),

              const InfoBullet(
                label: 'Síndrome dos Ovários Policísticos (SOP): ',
                text:
                    'Pode afetar a produção hormonal e causar corrimentos irregulares',
              ),

              const Text(
                '\n🌺 Como Lidar com o Corrimento Vaginal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '\tLidar com o corrimento vaginal envolve entender suas causas e sintomas, assim como adotar práticas de higiene adequadas e buscar tratamento quando necessário.\n',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const InfoBullet(
                label: 'Evite duchas vaginais: ',
                text:
                    'A ducha pode alterar o pH vaginal e prejudicar as bactérias boas que protegem a região.',
              ),

              const InfoBullet(
                label: 'Use roupas íntimas de algodão:',
                text:
                    'O algodão permite que a região genital respire, ajudando a evitar o acúmulo de umidade e o crescimento de microrganismos.',
              ),

              const InfoBullet(
                label: 'Troque regularmente a roupa íntima e absorventes: ',
                text:
                    'Para evitar que a umidade favoreça o crescimento de fungos e bactérias.',
              ),

              const InfoBullet(
                label: 'Evite produtos perfumados:',
                text:
                    'Sabonetes com fragrância ou produtos íntimos com químicos podem irritar a vagina e alterar seu equilíbrio.',
              ),

              const Text(
                '\nQuando Procurar um Médico',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '\tSe o corrimento vaginal apresentar características anormais, como cor ou odor fortes, acompanhado de outros sintomas (como dor ou ardência), é essencial procurar um médico. A avaliação clínica pode ajudar a identificar a causa e permitir o tratamento adequado, que pode envolver antibióticos, antifúngicos ou outras terapias específicas.\n',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const Text(
                '\nPrevenção de Infecções Vaginais',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '\tAlgumas medidas podem ajudar a prevenir infecções e manter o equilíbrio vaginal saudável:\n',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const InfoBullet(
                label: 'Pratique sexo seguro: ',
                text:
                    'Usar preservativos pode ajudar a prevenir ISTs, incluindo clamídia, gonorreia e tricomoníase.',
              ),

              const InfoBullet(
                label: 'Alimente-se bem e hidrate-se: ',
                text:
                    'Manter uma dieta equilibrada pode fortalecer o sistema imunológico e reduzir a propensão a infecções.',
              ),

              const InfoBullet(
                label: 'Evite o uso excessivo de antibióticos:',
                text:
                    'O uso inadequado de antibióticos pode alterar a flora vaginal e aumentar o risco de infecções como a candidíase.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
