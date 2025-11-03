import 'package:arthemisapp/pages/pagdirtestes.dart';
import 'package:flutter/material.dart';
import '../data/quiz_data.dart'; // Importa os modelos e dados do outro arquivo

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

  late List<Question> _questions;

  @override
  void initState() {
    super.initState();
    _questions = widget.topic.questions;
    _questions.shuffle(); // Embaralha as questoes, se quiser da pra remover
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
    setState(() {
      // Embaralha de novo caso escolher refazer o quiz (da pra tirar se quiser tb)
      _questions.shuffle();
      _currentQuestionIndex = 0;
      _score = 0;
      _quizFinished = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.topic.title)),
      body: _quizFinished ? _buildResultsScreen() : _buildQuizScreen(),
    );
  }

  // Build da UI
  Widget _buildQuizScreen() {
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
              'Pergunta ${_currentQuestionIndex + 1}/${_questions.length}',
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
            'Sua Pontuação: $_score / ${_questions.length}',
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
            ),
          ),
          const SizedBox(height: 16.0),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DirTestesPag()),
              );
            },
            child: const Text('Voltar aos Tópicos'),
          ),
        ],
      ),
    );
  }
}
