import 'package:arthemisapp/pages/pagdirecionamentocont.dart';
import 'package:flutter/material.dart';

class SecaoAprenderCiclo extends StatelessWidget {
  const SecaoAprenderCiclo({super.key});

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
          child: Image.network(
            'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/03/ciclo-1.png',
            height: 250,
          ),
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
        // Imagem
        Image.network(
          'https://dev-arthemiss.pantheonsite.io/wp-content/uploads/2025/03/ciclo-1.png',
          height: 200,
        ),
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
          'Aprenda mais sobre você e o seu corpo',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF333333),
          ),
        ),
        const SizedBox(height: 20),
        // Parágrafo
        const Text(
          'O Arthemiss direciona você ao que mais importa: o conhecimento sobre si mesma. Explore conteúdos criados para aprender a interpretar os sinais do seu corpo e a navegar por suas fases. Conecte-se com a sua essência e fortaleça o cuidado com você!',
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
        ),
        const SizedBox(height: 30),
        // Botão
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ContentScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF891D1A), // Cor de fundo do botão
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0), // Bordas arredondadas
            ),
          ),
          child: const Text(
            'ACESSE OS CONTEÚDOS',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
