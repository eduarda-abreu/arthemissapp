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
              const Text(
                'Entendendo a Endometriose',
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
                'A endometriose é uma condição ginecológica que afeta muitas mulheres em idade reprodutiva, causando dor, desconforto e impactos na qualidade de vida. Apesar de comum, ainda é pouco falada e muitas vezes confundida com sintomas normais do ciclo menstrual. Informar-se é um passo essencial para o diagnóstico precoce e o cuidado com a saúde.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 20),

              const Text(
                'O que é a Endometriose?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D100E),
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'A endometriose é uma condição ginecológica inflamatória que ocorre quando o endométrio — tecido que reveste o útero e que normalmente seria eliminado durante a menstruação — cresce fora do útero, em locais como ovários, trompas, bexiga, intestino ou outros órgãos da pelve. Esse tecido continua agindo como o endométrio normal, ou seja, ele se espessa, se rompe e sangra a cada ciclo menstrual, mas por estar fora do útero, o sangue não tem como ser eliminado, provocando inflamação, dor e, em alguns casos, a formação de tecido cicatricial (aderências).\nÉ importante lembrar que, ao apresentar qualquer sintoma suspeito, é fundamental consultar um profissional da saúde especializado em ginecologia para avaliação e diagnóstico adequados.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
