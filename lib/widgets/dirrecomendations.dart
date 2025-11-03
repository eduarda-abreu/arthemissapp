import 'package:arthemisapp/pages/pagrecomendacao.dart';
import 'package:flutter/material.dart';

class DirRecomendations extends StatelessWidget {
  const DirRecomendations({super.key});

  @override
  Widget build(BuildContext context) {
    // Container principal com a cor de fundo cinza claro
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // LayoutBuilder nos ajuda a criar layouts responsivos.
          // Se a tela for larga (ex: celular deitado ou tablet), usamos uma Row.
          if (constraints.maxWidth > 600) {
            return _buildLayoutLargo(context);
          } else {
            // Se a tela for estreita (ex: celular em pé), usamos uma Column.
            return _buildLayoutEstreito(context);
          }
        },
      ),
    );
  }

  // Widget para telas largas (imagem ao lado do texto)
  Widget _buildLayoutLargo(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Coluna da Esquerda (Imagem)
        Expanded(
          child: Image.asset('lib/assets/images/redeapio.jpg', height: 250),
        ),
        const SizedBox(width: 40),
        // Coluna da Direita (Textos e Botão)
        Expanded(child: _buildConteudoTexto(context)),
      ],
    );
  }

  // Widget para telas estreitas (imagem acima do texto)
  Widget _buildLayoutEstreito(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('lib/assets/images/redeapio.jpg', height: 250),
        const SizedBox(height: 30),
        // Textos e Botão
        _buildConteudoTexto(context),
      ],
    );
  }

  // Conteúdo de texto reutilizável para ambos os layouts
  Widget _buildConteudoTexto(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Título
        const Text(
          'Descubra e Inspire-se com o Arthemiss 💫',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF333333),
          ),
        ),
        const SizedBox(height: 20),
        // Parágrafo
        const Text(
          'No Arthemiss, acreditamos que o conhecimento e o autocuidado também podem vir por meio da arte e da cultura. Por isso, preparamos uma seleção especial de filmes, séries, podcasts e livros pensados para inspirar, informar e fortalecer mulheres. Explore conteúdos que falam sobre saúde, autoestima, empoderamento e histórias reais que refletem o poder feminino em todas as suas formas.',
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
        ),
        const SizedBox(height: 30),
        // Botão
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PagRecomendacao()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFCFCF2), // Cor de fundo do botão
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0), // Bordas arredondadas
              side: const BorderSide(
                color: Colors.black,
                width: 1.25,
              ), // Borda preta
            ),
          ),

          child: const Text(
            'VÁ PARA RECOMENDAÇÕES',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
