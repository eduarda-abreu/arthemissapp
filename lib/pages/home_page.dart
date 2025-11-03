import 'package:arthemisapp/widgets/dirrecomendations.dart';
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';
import 'package:arthemisapp/widgets/secao_aprender_ciclo.dart';
import 'package:arthemisapp/widgets/testdirecioamento.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Usamos a AppBar reutilizável
      appBar: MeuAppBar(titulo: 'Arthemiss', mostrarLogo: true),

      // 2. Conectamos o Menu Lateral à direita
      endDrawer: const MenuLateral(),

      body: SingleChildScrollView(
        // Permite que a página role se o conteúdo for longo
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Descubra, Aprenda e Cuide de você',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 23.5,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              // Imagem Ilustrativa (substitua pela sua)
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/03/menstruation.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                ' A saúde feminina vai muito além do que aprendemos na escola. Uma a cada quatro mulheres não tem conhecimento adequado sobre seu corpo. No Arthemiss, trazemos informações acessíveis e confiáveis sobre menstruação, ISTs, métodos contraceptivos e muito mais. Conecte-se, compartilhe experiências e fortaleça seu conhecimento sobre o próprio corpo.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17, height: 1.5),
              ),
              const SizedBox(height: 18),

              const SecaoAprenderCiclo(),

              const SizedBox(height: 10),

              const DirTeste(),

              const SizedBox(height: 10),

              const Text(
                '  É muito importante que as mulheres conheçam melhor o próprio corpo, pois isso permite que entendam seus ciclos, identifiquem sinais de saúde ou possíveis problemas e tomem decisões mais conscientes sobre seu bem-estar. Infelizmente, ainda existe muita desinformação circulando — tanto na internet quanto no dia a dia — que pode gerar medo, vergonha ou até hábitos prejudiciais. Ao buscar conhecimento de fontes confiáveis, as mulheres se fortalecem, quebram tabus e conquistam mais autonomia sobre sua saúde e seu corpo.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17, height: 1.5),
              ),

              const SizedBox(height: 10),

              const DirRecomendations(),
            ],
          ),
        ),
      ),
    );
  }
}
