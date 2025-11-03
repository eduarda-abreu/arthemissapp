import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart'; // Ajuste o caminho

final QuizTopic quizExgineco = QuizTopic(
  title: 'Exames Ginecológicos',
  description: 'A importância da prevenção.',
  icon: Icons.medical_services_outlined,
  questions: [
    Question(
      questionText: 'Qual exame previne o câncer de colo do útero?',
      answers: [
        'Exame de sangue',
        'Papanicolau (Preventivo)',
        'Ultrassom da tireoide',
        'Mamografia',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'Com que frequência uma mulher adulta deve ir ao ginecologista?',
      answers: [
        'Apenas se sentir dor',
        'A cada 5 anos',
        'Geralmente, uma vez ao ano para check-up',
        'Apenas quando for engravidar',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'O que o Papanicolau detecta?',
      answers: [
        'Gravidez',
        'Nível de açúcar no sangue',
        'Alterações nas células do colo do útero',
        'Infecções urinárias',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText:
          'Qual exame é usado para visualizar útero e ovários internamente?',
      answers: [
        'Raio-X',
        'Ultrassom transvaginal',
        'Exame de urina',
        'Tomografia da cabeça',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Para fazer o Papanicolau, a mulher NÃO deve...',
      answers: [
        'Estar menstruada ou ter tido relações 48h antes',
        'Ter comido doces',
        'Ter bebido água',
        'Ter tomado banho',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'A mamografia é um exame para rastrear o quê?',
      answers: [
        'Problemas no coração',
        'Câncer de mama',
        'Cistos no ovário',
        'Nível de hormônios',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'A partir de qual idade, geralmente, se recomenda a mamografia de rotina?',
      answers: [
        '20 anos',
        '30 anos',
        '40 ou 50 anos, dependendo da orientação',
        'Logo após a primeira menstruação',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'O que é a colposcopia?',
      answers: [
        'Um exame que usa um tipo de microscópio para ver o colo do útero',
        'Uma cirurgia para retirar o útero',
        'Um exame de sangue para ISTs',
        'Um tipo de ultrassom da mama',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O autoexame das mamas substitui a mamografia?',
      answers: [
        'Sim, é mais eficaz',
        'Não, mas é importante para o autoconhecimento e detecção de nódulos',
        'Sim, se feito todo dia',
        'Não, apenas o médico pode fazer o autoexame',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Exames de sangue ginecológicos podem checar o quê?',
      answers: [
        'Apenas tipo sanguíneo',
        'Níveis hormonais, ISTs (como HIV e Sífilis) e anemia',
        'Apenas a saúde dos ossos',
        'Apenas a pressão arterial',
      ],
      correctAnswerIndex: 1,
    ),
  ],
);
