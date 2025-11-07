import 'package:arthemisapp/widgets/info_bullet.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:flutter/material.dart';

class PagEndometriose extends StatelessWidget {
  const PagEndometriose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Usando nossa AppBar customizada.
      // Note que não passamos 'mostrarLogo', então ela exibe apenas o título.
      appBar: MeuAppBar(titulo: 'Endometriose', mostrarLogo: true),

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
                  'Endometriose: Conhecimento é Autocuidado',
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

              // Imagem Ilustrativa (substitua pela sua)
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://thumbs.dreamstime.com/b/menstrua%C3%A7%C3%A3o-feminina-mulheres-com-per%C3%ADodo-absorvente-higi%C3%AAnico-e-x%C3%ADcara-menstrual-ilustra%C3%A7%C3%A3o-do-tamp%C3%A3o-acess%C3%B3rio-vetorial-228775829.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              // Parágrafos de Texto (substitua pelo seu conteúdo)
              const Text(
                '   A endometriose é uma condição ginecológica que afeta muitas mulheres em idade reprodutiva, causando dor, desconforto e impactos na qualidade de vida. Apesar de comum, ainda é pouco falada e muitas vezes confundida com sintomas normais do ciclo menstrual. Informar-se é um passo essencial para o diagnóstico precoce e o cuidado com a saúde.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  '🦠 O que é a Endometriose?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                '   A endometriose é uma condição ginecológica inflamatória que ocorre quando o endométrio — tecido que reveste o útero e que normalmente seria eliminado durante a menstruação — cresce fora do útero, em locais como ovários, trompas, bexiga, intestino ou outros órgãos da pelve. Esse tecido continua agindo como o endométrio normal, ou seja, ele se espessa, se rompe e sangra a cada ciclo menstrual, mas por estar fora do útero, o sangue não tem como ser eliminado, provocando inflamação, dor e, em alguns casos, a formação de tecido cicatricial (aderências).\n   É importante lembrar que, ao apresentar qualquer sintoma suspeito, é fundamental consultar um profissional da saúde especializado em ginecologia para avaliação e diagnóstico adequados.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const SizedBox(height: 15),

              const Center(
                child: Text(
                  '🧬 Causas e fatores de risco',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const Text(
                '   As causas da endometriose ainda não são totalmente conhecidas, mas existem várias teorias que tentam explicá-la, como:',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              InfoBullet(
                label: 'Menstruação retrógrada:',
                text:
                    ' fluxo menstrual que volta pelas trompas para a cavidade pélvica.',
              ),
              InfoBullet(
                label: 'Fatores genéticos: ',
                text: 'histórico familiar pode aumentar as chances.',
              ),
              InfoBullet(
                label: 'Alterações imunológicas:',
                text:
                    ' o corpo pode não conseguir destruir o tecido endometrial fora do útero.',
              ),
              InfoBullet(
                label: 'Cirurgias ginecológicas: ',
                text: 'como cesáreas, podem espalhar células endometriais.',
              ),
              const SizedBox(height: 10),

              const Center(
                child: Text(
                  '🩸 Sinais e sintomas',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const Text(
                '   Os sintomas variam de pessoa para pessoa e nem sempre estão relacionados à gravidade da doença.  Alguns dos principais sintomas incluem:',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              InfoBullet(
                label: '',
                text: 'Cólicas menstruais intensas (dismenorreia)',
              ),
              InfoBullet(label: '', text: 'Dor pélvica crônica'),
              InfoBullet(label: '', text: ' Infertilidade'),
              InfoBullet(label: '', text: 'Fadiga'),
              InfoBullet(
                label: '',
                text: 'Dor durante a relação sexual (dispareunia)',
              ),
              InfoBullet(
                label: '',
                text:
                    'Dor ao urinar ou evacuar, especialmente durante a menstruação',
              ),
              InfoBullet(
                label: '',
                text: 'Sangramento menstrual intenso ou irregular',
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  '🩹 Tratamento',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const Text(
                '   Não há cura definitiva para a endometriose, mas os tratamentos têm como objetivo aliviar os sintomas, melhorar a qualidade de vida e preservar a fertilidade. As opções incluem:',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              InfoBullet(
                label: 'Tratamento medicamentoso:',
                text:
                    'Analgésicos (para alívio da dor), Anticoncepcionais hormonais (orais, injetáveis ou em adesivos), DIU hormonal (como o Mirena) e Terapias hormonais mais potentes (como os análogos do GnRH)',
              ),
              InfoBullet(
                label: 'Tratamento cirúrgico:',
                text:
                    'Remoção dos focos de endometriose por laparoscopia e em casos mais graves, pode ser necessária a histerectomia (remoção do útero)',
              ),
              InfoBullet(
                label: 'Tratamento multidisciplinar: ',
                text:
                    'Envolve equipe com ginecologista, nutricionista, fisioterapeuta pélvica, psicólogo, entre outros, para controle dos sintomas e bem-estar da paciente',
              ),

              const SizedBox(height: 10),
              const Center(
                child: Text(
                  '🌷 Impacto na vida da mulher',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const Text(
                '   A endometriose pode afetar significativamente a qualidade de vida das mulheres, tanto física quanto emocionalmente. Além das dores frequentes, a doença pode prejudicar relacionamentos, atividades profissionais e a saúde mental. O diagnóstico precoce e o tratamento adequado são fundamentais para minimizar esses impactos.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 10),

              const Center(
                child: Text(
                  '🩺 Convivendo com a endometriose',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D100E),
                  ),
                ),
              ),

              const Text(
                '   Viver com endometriose exige acompanhamento contínuo e mudanças no estilo de vida que ajudam a controlar os sintomas, como:',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              InfoBullet(label: '', text: 'Alimentação anti-inflamatória'),
              InfoBullet(label: '', text: 'Atividade física regular'),
              InfoBullet(
                label: '',
                text: ' Técnicas de relaxamento para controle do estresse',
              ),
              InfoBullet(
                label: '',
                text: 'Apoio psicológico e participação em grupos de apoio',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
