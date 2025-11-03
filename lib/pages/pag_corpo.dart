import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';

import 'package:flutter/material.dart';

class PagCorpo extends StatelessWidget {
  const PagCorpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MeuAppBar(titulo: 'Conhecendo o corpo ', mostrarLogo: true),
      endDrawer: const MenuLateral(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // Alinhamento à esquerda melhora a leitura de artigos
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título do Artigo
              const Center(
                child: Text(
                  'Conhecendo o Sistema Reprodutor Feminino',
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

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://lapsennimi.com/wp-content/uploads/2023/08/kohdunpoistoleikkaus--768x512.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),

              const Text(
                ' O sistema reprodutor feminino é uma parte fundamental da anatomia humana, responsável por diversas funções essenciais à reprodução, saúde hormonal e ciclo menstrual. A compreensão de cada parte desse sistema é essencial para o conhecimento do próprio corpo, permitindo um cuidado melhor com a saúde feminina.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 20),

              //1.
              const Text(
                '1. Ovários',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                'Os ovários são duas glândulas localizadas na região pélvica, responsáveis pela produção de óvulos e pela secreção de hormônios essenciais, como o estrogênio e a progesterona. Eles desempenham um papel fundamental no ciclo menstrual e na fertilidade. Cada ovário contém milhares de folículos, que são estruturas que abrigam os óvulos imaturos. A cada ciclo menstrual, um folículo amadurece e libera um óvulo durante a ovulação.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              //2.
              const Text(
                '2. Útero',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                'O útero é um órgão muscular e oco, localizado na parte inferior do abdômen, entre a bexiga e o reto. Sua principal função é abrigar o feto durante a gravidez. Durante o ciclo menstrual, o endométrio (camada interna do útero) se prepara para a possível implantação de um óvulo fertilizado. Se a fertilização não ocorrer, o endométrio se descama, resultando na menstruação.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              //3.
              const Text(
                '3. Trompas de Falópio (ou Tubas Uterinas)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                'As trompas de Falópio são dois tubos finos que se estendem do útero em direção aos ovários. Elas são responsáveis por captar o óvulo liberado durante a ovulação e conduzi-lo até o útero. A fecundação, quando ocorre, acontece geralmente nas trompas de Falópio, antes do óvulo fertilizado seguir para o útero para implantação.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              //4.
              const Text(
                '4. Endométrio',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                'O endométrio é a camada interna do útero, composta por tecido que se espessa durante o ciclo menstrual para receber um possível óvulo fertilizado. Caso não haja fertilização, o endométrio se desintegra e é expelido durante a menstruação. Esse processo é fundamental para o ciclo menstrual e a saúde reprodutiva.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              //5.
              const Text(
                '5. Colo do Útero (Cérvix)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                'O colo do útero é a parte inferior do útero que se projeta para dentro da vagina. Ele tem uma função importante como barreira protetora contra infecções e é responsável pela dilatação durante o parto para permitir a passagem do bebê. Durante o ciclo menstrual, o colo do útero também produz muco cervical, que pode ser mais ou menos espesso dependendo da fase do ciclo.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              //6.
              const Text(
                '6. Vagina',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Text(
                'A vagina é um canal muscular que conecta o útero ao exterior do corpo. Ela tem várias funções: permite a saída do fluxo menstrual, serve como passagem para o parto, e também é o local para a penetração durante o ato sexual. Além disso, a vagina possui um ambiente naturalmente ácido, que ajuda a proteger o sistema reprodutor feminino contra infecções.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              const Text(
                '\nConhecer as partes do sistema reprodutor feminino é um passo importante para entender melhor como o corpo feminino funciona e como cuidar da saúde reprodutiva. A educação sobre esses órgãos, suas funções e sua interação pode promover uma vida mais saudável e ajudar as mulheres a fazer escolhas informadas em relação ao seu corpo e saúde. É sempre importante procurar o acompanhamento de profissionais de saúde para dúvidas ou preocupações.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://i.pinimg.com/1200x/c1/86/90/c18690c6f1bf5652b1977186f09d6395.jpg',
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
