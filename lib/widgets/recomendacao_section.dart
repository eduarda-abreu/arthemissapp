import 'package:flutter/material.dart';
import '../widgets/recomendacao_grid_card.dart';

// 1. O WIDGET AGORA ACEITA OS PARÂMETROS DA PÁGINA PAI
class RecomendacaoSection extends StatelessWidget {
  final String filtro;
  final String pesquisa;

  const RecomendacaoSection({
    super.key,
    required this.filtro,
    required this.pesquisa,
  });

  // 2. LÓGICA DE FILTRAGEM
  List<Map<String, String>> _getFilteredContent() {
    final allContent = _loadContent(); // Carrega o "banco de dados"
    final query = pesquisa.toLowerCase();

    return allContent.where((item) {
      // 1. Verifica a categoria
      final categoryMatches = filtro == 'todos' || item['category'] == filtro;

      // 2. Verifica o texto da pesquisa (no título, tema ou descrição)
      final cardText =
          '${item['title']} ${item['theme']} ${item['description']}'
              .toLowerCase();
      final textMatches = query.isEmpty || cardText.contains(query);

      return categoryMatches && textMatches;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // Pega a lista JÁ FILTRADA
    final List<Map<String, String>> recomendacoes = _getFilteredContent();

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      // Padding removido daqui, pois já está na página pai
      padding: const EdgeInsets.all(0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.53, // Mantido do seu código
      ),
      itemCount: recomendacoes.length,
      itemBuilder: (context, index) {
        final item = recomendacoes[index];
        return RecomendacaoGridCard(
          image: item['image']!,
          title: item['title']!,
          type: item['type']!,
          platform: item['platform']!,
          theme: item['theme']!,
          description: item['description']!,
        );
      },
    );
  }

  // 3. "BANCO DE DADOS" (ADICIONEI A CHAVE 'category' A CADA ITEM)
  List<Map<String, String>> _loadContent() {
    // Peguei os dados do seu arquivo
    return [
      {
        'category': 'filmes',
        'image':
            'https://play-lh.googleusercontent.com/C37yKg7LTBwyGf2uKfpBX4wQXxgFg4dlXVixJIyPiD6e842q7wRmCeQ9OXe1Ixves78',
        'title': 'Frida (2002)',
        'type': 'Filme: Romance/Drama',
        'platform': 'Netflix',
        'theme': 'Empoderamento feminino e Menstruação.',
        'description':
            'Uma biografia da artista Frida Kahlo, que canalizou a dor de uma lesão incapacitante e seu casamento tempestuoso para sua obra.',
      },
      {
        'category': 'filmes',
        'image':
            'https://m.media-amazon.com/images/S/pv-target-images/21a75b67e9d4948ba0c8ad8daa98cc7d28c15710271d3424a454f26f0cee9365.jpg',
        'title': 'A Pele Que Habito',
        'type': 'Filme: Ficção científica',
        'platform': 'Prime Video',
        'theme': 'Corpo, identidade e ética médica',
        'description':
            'Um cirurgião em luto que busca criar uma pele invulnerável. Para isso, ele cruza uma linha proibida: experimentos transgênicos em humanos.',
      },
      {
        'category': 'filmes',
        'image':
            'https://play-lh.googleusercontent.com/ZjgAAptIP1O-80cRVe9iVJHTuusNJ6pvv_ZDTMlZk5ZuFCqA1SrfB70K8I-1YYX79sOu',
        'title': 'Ela',
        'type': 'Filme: Drama',
        'platform': 'Prime Video',
        'theme': 'Solidão, relações e desejos femininos.',
        'description':
            'Um homem se apaixona por uma inteligência artificial com voz feminina. A história explora o impacto da tecnologia nos sentimentos humanos.',
      },
      {
        'category': 'filmes',
        'image':
            'https://br.web.img2.acsta.net/medias/nmedia/18/93/75/86/20275816.jpg',
        'title': 'De Repente 30',
        'type': 'Filme: Comédia',
        'platform': 'Max',
        'theme': 'Autoestima, construção de identidade.',
        'description':
            'Uma garota que está descontente com sua própria idade, já que seus colegas mais populares da escola não lhe dão atenção e seus pais ficam sempre no seu pé.',
      },
      {
        'category': 'filmes',
        'image':
            'https://m.media-amazon.com/images/M/MV5BOWEwZmI5MDQtODU4Ni00YTFkLTlmNzItOWFjYWU3MzRkN2IyXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
        'title': 'Period. End of Sentence',
        'type': 'Documentário',
        'platform': 'Netflix',
        'theme': 'Menstruação e empoderamento feminino.',
        'description':
            'Em um esforço para melhorar a higiene feminina, uma máquina que cria absorventes biodegradáveis ​​de baixo custo é instalada em uma vila rural no norte da Índia.',
      },
      {
        'category': 'filmes',
        'image':
            'https://br.web.img2.acsta.net/medias/nmedia/18/86/93/79/19870302.jpg',
        'title': '4 Meses, 3 Semanas e 2 Dias',
        'type': 'Filme: Drama',
        'platform': 'Google Play',
        'theme': 'Aborto e repressão.',
        'description':
            'Durante o regime comunista na Romênia, uma jovem busca realizar um aborto ilegal, retratando as dificuldades e riscos enfrentados pelas mulheres nessa situação.',
      },
      {
        'category': 'filmes',
        'image':
            'https://br.web.img2.acsta.net/pictures/20/11/17/16/44/3495622.jpg',
        'title': 'Pieces of a Woman',
        'type': 'Filme: Drama',
        'platform': 'Netflix',
        'theme': 'Luto, maternidade, perda gestacional, relações familiares.',
        'description':
            'Conta jornada emocional de uma mãe que acaba de perder seu bebê. Diante dessa perda, ela terá que lidar com as consequências que seu luto tem nas relações familiares.',
      },
      {
        'category': 'filmes',
        'image':
            'https://br.web.img3.acsta.net/pictures/21/11/18/16/57/5746772.jpg',
        'title': 'Red: Crescer É uma Fera',
        'type': 'Filme: Animação',
        'platform': 'Disney+',
        'theme': 'Puberdade, autoconhecimento, relação mãe e filha, aceitação.',
        'description':
            'Mei Lee é uma garota de 13 anos que, ao lidar com as mudanças da adolescência, descobre que se transforma em um panda vermelho gigante sempre que sente emoções fortes.',
      },
      {
        'category': 'livros',
        'image':
            'https://m.media-amazon.com/images/I/71eeJ8Gtm-L._AC_UF1000,1000_QL80_.jpg',
        'title': 'Mulheres, Mitos e Deusas',
        'type': 'Livro: Martha Robles',
        'platform': '',
        'theme': 'História e mitologia femininas',
        'description':
            'O livro traça uma jornada sobre o papel da mulher na cultura e nas religiões, desmistificando visões patriarcais e celebrando a ancestralidade feminina.',
      },
      {
        'category': 'livros',
        'image':
            'https://m.media-amazon.com/images/I/61oGE2tFFPL._AC_UF1000,1000_QL80_.jpg',
        'title': 'Mulheres invisíveis',
        'type': 'Livro: Caroline Criado Perez',
        'platform': '',
        'theme': 'Desigualdade de gênero, saúde da mulher, feminismo.',
        'description':
            'A obra revela como o mundo foi projetado com base no “padrão masculino” e ignora dados sobre o corpo, a saúde e a realidade das mulheres.',
      },
      {
        'category': 'livros',
        'image':
            'https://m.media-amazon.com/images/I/8177asxnGGL._AC_UF1000,1000_QL80_.jpg',
        'title': 'O Mito da Beleza',
        'type': 'Livro: Naomi Wolfz',
        'platform': '',
        'theme': 'Padrões estéticos e opressão.',
        'description':
            'Uma crítica à indústria da beleza e aos padrões estéticos impostos às mulheres, que afetam diretamente sua saúde física e mental.',
      },
      {
        'category': 'livros',
        'image': 'https://m.media-amazon.com/images/I/61dnKlC70cL.jpg',
        'title': 'Period Power',
        'type': 'Livro: Maisie Hillz',
        'platform': '',
        'theme':
            'Ciclo menstrual, saúde hormonal, autoconhecimento, bem-estar feminino.',
        'description':
            'Maisie Hill apresenta um guia prático e profundo sobre como cada fase do ciclo menstrual influencia o corpo, a mente e a energia da mulher.',
      },
      {
        'category': 'livros',
        'image': 'https://m.media-amazon.com/images/I/81d2JeSjcLL.jpg',
        'title': 'O Cérebro e a Menopausa',
        'type': 'Livro: Lisa Mosconiz',
        'platform': '',
        'theme': 'Menopausa, neurociência, saúde da mulher.',
        'description':
            'O livro explora como a menopausa afeta o cérebro das mulheres — desde oscilações hormonais até impactos cognitivos — e como compreender esses processos pode transformar o cuidado feminino.',
      },
      {
        'category': 'livros',
        'image':
            'https://m.media-amazon.com/images/I/71YO0827k6L._AC_UF1000,1000_QL80_.jpg',
        'title': 'Viva a Vagina',
        'type': 'Livro: Nina Brochmanz',
        'platform': '',
        'theme': 'Anatomia feminina, saúde íntima, tabus.',
        'description':
            'O livro desvenda tudo sobre o corpo feminino, quebrando mitos e falando sem rodeios sobre vulva, vagina, prazer, menstruação, higiene e mais.',
      },
      {
        'category': 'livros',
        'image':
            'https://editoraappris.com.br/wp-content/uploads/2022/05/1610392923-0011208-danielle-rosa-evangelista-capa-frente-1.jpg',
        'title': 'Saúde da Mulher',
        'type': 'Livro: Danielle Rosa',
        'platform': '',
        'theme': 'Saúde pública, pesquisa acadêmica, cuidado integral.',
        'description':
            'A obra reúne estudos e reflexões de um grupo de pesquisa dedicado à saúde da mulher, com foco na atenção básica, políticas públicas, aspectos psicossociais e vivências reais.',
      },
      {
        'category': 'series',
        'image':
            'https://br.web.img3.acsta.net/pictures/19/01/03/10/55/2296345.jpg',
        'title': 'Sex Education',
        'type': 'Série: Drama',
        'platform': 'Netflixx',
        'theme': 'Educação sexual e saúde reprodutiva',
        'description':
            'A série acompanha adolescentes e adultos explorando questões como sexualidade, consentimento e relacionamentos, de forma leve e educativa.',
      },
      {
        'category': 'series',
        'image':
            'https://br.web.img3.acsta.net/pictures/17/06/07/09/31/196445.jpg',
        'title': 'The Bold Type',
        'type': 'Série: Drama',
        'platform': 'Prime Videx',
        'theme': 'Saúde mental, sexualidade e feminismo.',
        'description':
            'Três mulheres jovens trabalham em uma revista feminina e discutem temas atuais como sexualidade, saúde, carreira e relacionamentos, promovendo empoderamento.',
      },
      {
        'category': 'series',
        'image':
            'https://br.web.img3.acsta.net/c_310_420/pictures/20/02/21/15/32/5681660.jpg',
        'title': 'Nada Ortodoxa',
        'type': 'Série: Drama',
        'platform': 'Netflixx',
        'theme': 'Liberdade feminina e autodescoberta.',
        'description':
            'Na intenção de escapar do casamento arranjado por seus pais em Nova York, uma jovem judia (Shira Haas) resolve fugir para Berlim e começar uma nova vida.',
      },
      {
        'category': 'series',
        'image':
            'https://br.web.img3.acsta.net/c_310_420/pictures/18/03/30/14/36/5182185.jpg',
        'title': 'The Letdown',
        'type': 'Série: Drama/Comédia',
        'platform': 'Netflix',
        'theme': 'Maternidade e saúde mental.',
        'description':
            'Audrey, mãe de primeira viagem, a jovem aprende na pele o que são as noites mal dormidas e as preocupações constantes com seu bebê.',
      },
      {
        'category': 'series',
        'image':
            'https://br.web.img3.acsta.net/c_310_420/pictures/17/09/29/11/02/4927941.jpg',
        'title': 'Big Mouth',
        'type': 'Série: Animação/Comédia',
        'platform': 'Netflixx',
        'theme': 'Puberdade, saúde mental, corpo em transformação.',
        'description':
            'A série acompanha um grupo de adolescentes enquanto navegam pelas confusões da puberdade com a ajuda de monstros hormonais que representam seus impulsos e inseguranças.',
      },
      {
        'category': 'series',
        'image':
            'https://br.web.img3.acsta.net/c_310_420/pictures/20/03/27/00/03/3461697.jpg',
        'title': 'O Clube das Babás',
        'type': 'Série: Comédia',
        'platform': 'Netflixx',
        'theme': 'Amizade, menstruação, mudanças na adolescência.',
        'description':
            'Cinco meninas se unem para criar um clube de babás e, entre os trabalhos e as aventuras, enfrentam juntas os desafios do crescimento, como a chegada da menstruação, relações familiares e mudanças no corpo.',
      },
      {
        'category': 'podcasts',
        'image':
            'https://i.scdn.co/image/ab67656300005f1fc18297c4a2e769c41056de44',
        'title': 'Bom Dia, Obvious',
        'type': 'Podcast: Marcela Ceribelli',
        'platform': 'Spotify',
        'theme': 'Autoconhecimento e bem-estar feminino.',
        'description':
            'Conversas sobre temas do universo feminino, como ciclos menstruais, autocuidado, carreira e relacionamentos, com um olhar acolhedor e informativo.',
      },
      {
        'category': 'podcasts',
        'image':
            'https://s2-globo-play.glbimg.com/NasYg46aGLI3Cioxnsjh8C_79WM=/362x536/https://s2-globo-play.glbimg.com/ZKeyyXOYtPt79OB4jQH7O622hEI=/https://s2.glbimg.com/2bCn4IYZFv2uCgoYWVBXtwMWafc=/i.s3.glbimg.com/v1/AUTH_c3c606ff68e7478091d1ca496f9c5625/internal_photos/bs/2024/Q/s/3KAieiQiOlA4LCgWZGvQ/mamilos-globoplay-poster.jpeg',
        'title': 'Mamilos',
        'type': 'Podcast: B9',
        'platform': 'Spotify',
        'theme': 'Sexualidade, saúde e comportamento.',
        'description':
            'Podcast de jornalismo de peito aberto que discute temas diversos, incluindo saúde da mulher, empatia, tabus e direitos.',
      },
      {
        'category': 'podcasts',
        'image':
            'https://i.scdn.co/image/ab6765630000ba8a81b3489e441dc4659aaa926f',
        'title': 'Calcinha Larga',
        'type': 'Podcast: Camila Fremder, Helen Ramos e Tati Bernardi',
        'platform': 'Spotifyy',
        'theme': 'Cotidiano feminino.',
        'description':
            'Três jornalistas compartilham experiências sobre ser mulher, mãe, profissional e dona de si. Elas recebem toda semana convidadas para falar de temas complexos.',
      },

      // Adicione seus outros itens aqui com a chave 'category'
      // Ex: 'category': 'podcasts'
    ];
  }
}
