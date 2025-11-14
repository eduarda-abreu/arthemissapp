// Import da página de testes
import 'package:arthemisapp/widgets/menulateral.dart';
import 'package:arthemisapp/widgets/meuapp_bar.dart';

import 'pagdirtestes.dart';

import 'package:flutter/material.dart';
import '../data/quiz_data.dart'; // Importa os dados do quiz

// Pagina do quiz
class QuizPage extends StatefulWidget {
  final QuizTopic topic;

  const QuizPage({super.key, required this.topic});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // Variaveis do quiz
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _quizFinished = false;

  // Lista para as 5 perguntas do quiz
  late List<Question> _questions;

  @override
  void initState() {
    super.initState();
    // Carrega as perguntas ao iniciar
    _carregarPerguntasAleatorias();
  }

  // Carrega 5 perguntas aleatórias
  void _carregarPerguntasAleatorias() {
    // Copia a lista completa de perguntas
    final listaCompleta = List<Question>.from(widget.topic.questions);

    // Embaralha a lista copiada
    listaCompleta.shuffle();

    // Pega as 5 primeiras e reseta o quiz
    setState(() {
      _questions = listaCompleta.take(5).toList();

      // Reseta as variáveis
      _currentQuestionIndex = 0;
      _score = 0;
      _quizFinished = false;
    });
  }

  void _answerQuestion(int selectedAnswerIndex) {
    if (_quizFinished) return;

    // Verifica a resposta
    if (selectedAnswerIndex ==
        _questions[_currentQuestionIndex].correctAnswerIndex) {
      _score++;
    }

    // Avanca pra prox questao ou finaliza o quiz
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        _quizFinished = true;
      }
    });
  }

  // Reseta o quiz
  void _restartQuiz() {
    // Recarrega 5 novas perguntas
    _carregarPerguntasAleatorias();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MeuAppBar(titulo: 'Quiz Arthemiss', mostrarLogo: true),
      endDrawer: const MenuLateral(),
      body: _quizFinished ? _buildResultsScreen() : _buildQuizScreen(),
    );
  }

  // Constrói a tela do quiz
  Widget _buildQuizScreen() {
    // Mostra um loading se as perguntas não carregaram
    if (_questions.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    final question = _questions[_currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Texto das perguntas
            Text(
              'Pergunta ${_currentQuestionIndex + 1}/${_questions.length}', // Ex: Pergunta 1/5
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(color: Colors.grey.shade700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            Text(
              question.questionText,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32.0),

            // Botao de resposta
            ...question.answers.asMap().entries.map((entry) {
              int idx = entry.key;
              String answerText = entry.value;

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => _answerQuestion(idx),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 18),
                    backgroundColor: const Color(0xFF891D1A),
                  ),
                  child: Text(answerText),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  // Build da tela de resultado
  Widget _buildResultsScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quiz Finalizado!',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 24.0),
          Text(
            'Sua Pontuação: $_score / ${_questions.length}', // Ex: Sua Pontuação: 3 / 5
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 32.0),
          ElevatedButton.icon(
            onPressed: _restartQuiz,
            icon: const Icon(Icons.refresh),
            label: const Text('Reiniciar Quiz'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 12.0,
              ),
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: const Color(0xFF891D1A),
            ),
          ),
          const SizedBox(height: 16.0),
          TextButton(
            onPressed: () {
              // Correto: volta para a home e limpa as outras telas.
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const DirTestesPag()),
                (Route<dynamic> route) => false,
              );
            },
            child: const Text('Voltar aos Tópicos'),
          ),
        ],
      ),
    );
  }
}
