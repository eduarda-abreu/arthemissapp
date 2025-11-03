import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:flutter/material.dart';

class PagPuberdade extends StatelessWidget {
  const PagPuberdade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Usando nossa AppBar customizada.
      // Note que não passamos 'mostrarLogo', então ela exibe apenas o título.
      appBar: MeuAppBar(titulo: 'Puberdade', mostrarLogo: true),

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
                'Puberdade',
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
                'A puberdade é uma fase de transição entre a infância e a vida adulta, marcada por uma série de mudanças físicas, hormonais e emocionais. Esse processo ocorre principalmente entre 8 e 13 anos nas meninas, mas pode variar de acordo com fatores genéticos e ambientais. Durante a puberdade, o corpo das meninas passa por mudanças significativas que são essenciais para o desenvolvimento reprodutivo.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 20),

              const Text(
                'Mudanças Físicas',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                '\tDurante a puberdade, as meninas experimentam várias transformações no corpo:\n\nCrescimento de estatura: A puberdade desencadeia um aumento rápido na altura, conhecido como “estirão de crescimento”. \n\nCrescimento de pelos pubianos e axilares: Os pelos começam a crescer nas áreas pubiana e nas axilas devido ao aumento da produção de hormônios sexuais, como o estrogênio.\n\nDesenvolvimento das mamas: O crescimento das mamas é um dos primeiros sinais visíveis da puberdade. Esse processo pode durar vários anos.\n\nAlterações na forma do corpo: As meninas desenvolvem uma silhueta mais curvilínea, com aumento na largura dos quadris e depósito de gordura nas coxas e nádegas.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const Text(
                'Início da Menstruação (Menarca)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'Um dos marcos mais importantes da puberdade é o início da menstruação, conhecido como menarca. Geralmente, a menarca ocorre entre os 10 e 15 anos, sendo mais comum por volta dos 12 anos. O ciclo menstrual é o processo pelo qual o corpo se prepara para uma possível gravidez. No início, o ciclo menstrual pode ser irregular, mas com o tempo tende a se estabilizar.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const Text(
                'Mudanças Hormonais e Emocionais',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'Durante a puberdade, as meninas vivenciam muitas mudanças, tanto no corpo quanto nas emoções. Nesse período, os hormônios começam a agir mais intensamente, o que pode causar transformações físicas, como o crescimento dos seios e o início do ciclo menstruação \nAs emoções também ficam mais intensas, e é comum se sentir mais ansiosa, insegura ou até mais irritada. Esses sentimentos são naturais e fazem parte do processo de se tornar uma pessoa adulta. Além disso, é uma fase em que muitas meninas começam a buscar mais independência, a explorar quem realmente são e a se entender melhor. A puberdade pode ser um momento desafiador, mas é também uma fase de descobertas e de crescimento emocional.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
