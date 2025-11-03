import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
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
              const Text(
                'Cistos Ovarianos',
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
                'Os cistos de ovário são uma condição bastante comum entre mulheres de todas as idades. Eles podem surgir desde a vida intrauterina até o período pós-menopausa, e muitas vezes passam despercebidos, sem sintomas aparentes. No entanto, em alguns casos, podem causar desconforto, alterações no ciclo menstrual e até complicações mais sérias.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 20),

              const Text(
                'O que é um cisto no ovário?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'Cistos no ovário são bolsas cheias de líquido (ou, em alguns casos, sangue ou tecido) que se formam dentro ou sobre os ovários. Eles podem surgir em qualquer fase da vida — desde a infância até após a menopausa — mas são mais comuns \nA maioria dos cistos é benigna (não cancerígena) e desaparece sozinha após alguns ciclos menstruais. Mesmo assim, o acompanhamento ginecológico é essencial para evitar complicações e garantir um diagnóstico preciso.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const Text(
                'Como são identificados?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'A detecção costuma ser feita por meio de exames de imagem, como a ultrassonografia transvaginal ou abdominal. Em alguns casos, podem ser solicitados exames de sangue ou até uma ressonância magnética, principalmente quando há dúvida sobre a natureza do cisto.\n2. Quando necessário, o médico pode realizar uma laparoscopia — um procedimento minimamente invasivo que permite visualizar o cisto e, se preciso, removê-lo.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const Text(
                'Quais são os sintomas?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'Algumas mulheres não apresentam sintomas, mas outras podem sentir:\nDor pélvica ou abdominal (leve, intensa ou em forma de pressão);\nMenstruação irregular (sangramentos intensos ou ausência de menstruação);\nInchaço abdominal;\nDor durante a relação sexual (dispareunia);\nSensação de pressão na bexiga ou intestino (o cisto pode pressionar outros órgãos);\nDificuldade para engravidar (em alguns casos). \n\tEm situações mais graves, o cisto pode romper ou causar a torção do ovário, resultando em dor intensa e necessidade de atendimento de urgência. Por isso, fique atenta a qualquer dor súbita e persistente.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
