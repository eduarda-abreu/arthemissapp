import 'package:arthemisapp/data/quiz_amamentacao.dart';
import 'package:arthemisapp/data/quiz_candevagi.dart';
import 'package:arthemisapp/data/quiz_cesareavspartonorm.dart';
import 'package:arthemisapp/data/quiz_cistonoovario.dart';
import 'package:arthemisapp/data/quiz_conhecendocorpo.dart';
import 'package:arthemisapp/data/quiz_corrimento.dart';
import 'package:arthemisapp/data/quiz_endometriose.dart';
import 'package:arthemisapp/data/quiz_exgineco.dart';
import 'package:arthemisapp/data/quiz_hpv.dart';
import 'package:arthemisapp/data/quiz_ist.dart';
import 'package:arthemisapp/data/quiz_menopausa.dart' show quizMenopausa;
import 'package:arthemisapp/data/quiz_menstruacao.dart';
import 'package:arthemisapp/data/quiz_metcontracept.dart';
import 'package:arthemisapp/data/quiz_ovariopoli.dart';
import 'package:arthemisapp/data/quiz_puberdade.dart';
import 'package:arthemisapp/pages/home_page.dart';
import 'package:arthemisapp/pages/pag_amamentacao.dart';
import 'package:arthemisapp/pages/pag_cesaria.dart';
import 'package:arthemisapp/pages/pag_corpo.dart';
import 'package:arthemisapp/pages/pag_hpv.dart';
import 'package:arthemisapp/pages/pagcistonoovario.dart';
import 'package:arthemisapp/pages/pagcorrimento.dart';
import 'package:arthemisapp/pages/pagendometriose.dart';
import 'package:arthemisapp/pages/pagexameginecologico.dart';
import 'package:arthemisapp/pages/pagists.dart';
import 'package:arthemisapp/pages/pagmenopausa.dart';
import 'package:arthemisapp/pages/pagmenstruacao.dart';
import 'package:arthemisapp/pages/pagmetodos.dart';
import 'package:arthemisapp/pages/pagpuberdade.dart';
import 'package:arthemisapp/pages/pagrecomendacao.dart';
import 'package:arthemisapp/pages/pagsop.dart';
import 'package:arthemisapp/pages/pagvaginose.dart';
import 'package:arthemisapp/pages/quiz_page.dart';
import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 120,
            child: DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFF891D1A)),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              // Correto: volta para a home e limpa as outras telas.
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                (Route<dynamic> route) => false,
              );
            },
          ),
          ExpansionTile(
            leading: const Icon(Icons.menu_book_outlined),
            title: const Text('Conteúdos'),
            children: <Widget>[
              // Itens dentro de "Conteúdos"

              //Menstruação
              ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 30.0,
                ), // Adiciona um recuo
                title: const Text('Menstruação'),
                onTap: () {
                  // CORREÇÃO IMPORTANTE: Use Navigator.push para ir para uma página interna.
                  // 'pushAndRemoveUntil' limparia a tela principal, o que não queremos aqui.
                  Navigator.pop(context); // Fecha o drawer primeiro
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PagMestruacao(),
                    ),
                  );
                },
              ),

              //ISTs
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('ISTs'),
                onTap: () {
                  Navigator.pop(context); // Fecha o drawer primeiro
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PagISTs()),
                  );
                },
              ),

              //Métodos contraceptivos
              ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 30.0,
                ), // Adiciona um recuo
                title: const Text('Métodos Contraceptivos'),
                onTap: () {
                  Navigator.pop(context); // Fecha o drawer primeiro
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PagMetodos()),
                  );
                },
              ),

              //Menopausa
              ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 30.0,
                ), // Adiciona um recuo
                title: const Text('Menopausa'),
                onTap: () {
                  Navigator.pop(context); // Fecha o drawer primeiro
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PagMenopausa(),
                    ),
                  );
                },
              ),

              //Exames
              ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 30.0,
                ), // Adiciona um recuo
                title: const Text('Exames Ginecológicos'),
                onTap: () {
                  Navigator.pop(context); // Fecha o drawer primeiro
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PagExames()),
                  );
                },
              ),

              //hpv
              ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 30.0,
                ), // Adiciona um recuo
                title: const Text('HPV'),
                onTap: () {
                  Navigator.pop(context); // Fecha o drawer primeiro
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PagHPV()),
                  );
                },
              ),

              //cisto no ovario
              ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 30.0,
                ), // Adiciona um recuo
                title: const Text('Cisto no Ovário'),
                onTap: () {
                  Navigator.pop(context); // Fecha o drawer primeiro
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PagCistoNoOvario(),
                    ),
                  );
                },
              ),

              //endometriose
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Endometriose'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PagEndometriose(),
                    ),
                  );
                },
              ),

              //sop
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Síndrome do ovário policistico'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PagSop()),
                  );
                },
              ),

              //puberdade
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Puberdade'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PagPuberdade(),
                    ),
                  );
                },
              ),

              //conheçendo o corpo
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Conheçendo o corpo'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PagCorpo()),
                  );
                },
              ),

              //cesarea vs normal
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Cesarea vs Parto Normal'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PagCesaria()),
                  );
                },
              ),

              //amamentação
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Amamentação'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PagAmamentacao(),
                    ),
                  );
                },
              ),

              //corrimento
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Corrimento vaginal'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PagCorrimento(),
                    ),
                  );
                },
              ),

              //candidiase
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0),
                title: const Text('Candidíase e Vaginose'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PagVaginose(),
                    ),
                  );
                },
              ),
            ],
          ),

          ExpansionTile(
            leading: const Icon(Icons.quiz_outlined), // Ícone para Testes
            title: const Text('Testes'),
            children: <Widget>[
              // ListTile para o Quiz de Menstruação
              ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 40.0,
                ), // Ícone do Quiz
                title: Text(quizMenstruacao.title), // Título do Quiz
                onTap: () {
                  Navigator.pop(context); // Fecha o drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      // Vai para PagQuizPlay com os dados de Menstruação
                      builder: (context) => QuizPage(topic: quizMenstruacao),
                    ),
                  );
                },
              ),

              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizIST.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizIST),
                    ),
                  );
                },
              ),

              // ListTile para o Quiz de Métodos Contraceptivos
              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizMetContracept.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizMetContracept),
                    ),
                  );
                },
              ),

              // ListTile para o Quiz de Menopausa
              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizMenopausa.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizMenopausa),
                    ),
                  );
                },
              ),

              // ListTile para o Quiz de Exames Ginecológicos
              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizExgineco.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizExgineco),
                    ),
                  );
                },
              ),

              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizHPV.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizHPV),
                    ),
                  );
                },
              ),

              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizCistonoovario.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizCistonoovario),
                    ),
                  );
                },
              ),

              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizEndometriose.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizEndometriose),
                    ),
                  );
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizOvariopoli.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizOvariopoli),
                    ),
                  );
                },
              ),

              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizPuberdade.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizPuberdade),
                    ),
                  );
                },
              ),

              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizConhecendocorpo.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          QuizPage(topic: quizConhecendocorpo),
                    ),
                  );
                },
              ),

              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizCesareavspartonorm.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          QuizPage(topic: quizCesareavspartonorm),
                    ),
                  );
                },
              ),

              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizAmamentacao.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizAmamentacao),
                    ),
                  );
                },
              ),

              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizCorrimento.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizCorrimento),
                    ),
                  );
                },
              ),

              ListTile(
                contentPadding: const EdgeInsets.only(left: 40.0),
                title: Text(quizcandevagi.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(topic: quizcandevagi),
                    ),
                  );
                },
              ),
            ],
          ), // Fim do ExpansionTile 'Testes'

          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Recomendações'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PagRecomendacao(),
                ),
              );
            },
          ),
          // Adicione outros ListTiles aqui...
        ],
      ),
    );
  }
}
