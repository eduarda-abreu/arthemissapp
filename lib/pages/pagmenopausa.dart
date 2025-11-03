import 'package:arthemisapp/widgets/info_bullet.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:arthemisapp/widgets/secinfo_bullet.dart';
import 'package:flutter/material.dart';

class PagMenopausa extends StatelessWidget {
  const PagMenopausa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Usando nossa AppBar customizada.
      // Note que não passamos 'mostrarLogo', então ela exibe apenas o título.
      appBar: MeuAppBar(titulo: 'Menopausa', mostrarLogo: true),

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
                'Menopausa',
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
                  'https://thumbs.dreamstime.com/b/menstrua%C3%A7%C3%A3o-feminina-mulheres-com-per%C3%ADodo-absorvente-higi%C3%AAnico-e-x%C3%ADcara-menstrual-ilustra%C3%A7%C3%A3o-do-tamp%C3%A3o-acess%C3%B3rio-vetorial-228775829.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              // Parágrafos de Texto (substitua pelo seu conteúdo)
              const Text(
                'A menopausa é uma fase natural na vida da mulher, marcando o fim do período reprodutivo. Mais do que uma transição biológica, esse momento traz mudanças físicas e emocionais que podem impactar o bem-estar e a qualidade de vida.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 20),

              const Text(
                'O que é a Menopausa?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'As mulheres já nascem com uma quantidade limitada de óvulos, que vão diminuindo ao longo da vida até cessarem na menopausa. Esse período é chamado de menopausa e ocorre, em média, entre os 48 e 55 anos. No entanto, algumas mulheres podem vivenciá-la antes dos 40 anos, sendo classificada como menopausa precoce.\nA menopausa não acontece de um dia para o outro. Ela é dividida em três fases:',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              SizedBox(height: 10),

              const Text(
                'As Fases da Menopausa',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),

              SizedBox(height: 10),
              //1 fase
              const SecinfoBullet(
                label: '1. Pré-menopausa:',
                text:
                    'O corpo começa a produzir menos hormônios, resultando em ciclos menstruais irregulares e sintomas variáveis.',
              ),

              //2 fase
              const SecinfoBullet(
                label: '2. Menopausa: ',
                text:
                    'A última menstruação acontece, confirmada após 12 meses sem nenhum sangramento.',
              ),

              //3 fase
              const SecinfoBullet(
                label: '3. Pós-menopausa:',
                text:
                    ' Fase que se estende pelo resto da vida e pode aumentar a predisposição a osteoporose e doenças cardiovasculares.',
              ),

              const Text(
                'Sintomas mais comuns da menopausa',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'Cada mulher vive a menopausa de maneira única! Algumas sentem sintomas intensos, enquanto outras passam por essa fase sem grandes desconfortos.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              //alteração
              const InfoBullet(
                label: 'Alterações no ciclo menstrual-',
                text: 'ciclos irregulares antes da menstruação cessar de vez.',
              ),

              //onda
              const InfoBullet(
                label: 'Ondas de calor-',
                text: 'sensação súbita de calor intenso pelo corpo.',
              ),

              //insonia
              const InfoBullet(
                label: 'Insônia e sudorese noturna– ',
                text:
                    'dificuldade para dormir e suor excessivo durante a noite.',
              ),

              //ressecamento
              const InfoBullet(
                label: 'Ressecamento vaginal-',
                text:
                    'falta de lubrificação e coceira vaginal, podendo causar dor durante a relação sexual.',
              ),

              //unha
              const InfoBullet(
                label: 'Alterações na pele, cabelos e unhas-',
                text: 'perda de elasticidade, ressecamento e enfraquecimento.',
              ),

              //mudança
              const InfoBullet(
                label: 'Mudanças de humor-',
                text:
                    'oscilações frequentes de humor, ansiedade e irritabilidade. ',
              ),

              //diminuição
              const InfoBullet(
                label: 'Diminuição da libido-',
                text: 'redução do desejo sexual.',
              ),

              //perda
              const InfoBullet(
                label: 'Perda de massa óssea-',
                text: 'aumento do risco de osteoporose.',
              ),

              //ganha
              const InfoBullet(
                label: 'Ganho de peso- ',
                text:
                    'mudanças no metabolismo e redistribuição da gordura corporal.',
              ),

              //risco
              const InfoBullet(
                label: 'Risco cardiovascular-',
                text: 'aumento da pressão arterial e do colesterol ruim (LDL).',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
