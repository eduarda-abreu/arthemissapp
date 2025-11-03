import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart'; // Ajuste o caminho

final QuizTopic quizPuberdade = QuizTopic(
  title: 'Puberdade',
  description: 'As mudanças no corpo.',
  icon: Icons.escalator_warning_outlined,
  questions: [
    Question(
      questionText: 'O que marca o início da puberdade feminina?',
      answers: [
        'O crescimento dos seios (telarca)',
        'O primeiro beijo',
        'A primeira nota boa na escola',
        'A primeira menstruação (menarca)',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'A menarca é...',
      answers: [
        'A primeira menstruação',
        'O crescimento de pelos pubianos',
        'O aumento de peso',
        'O fim da puberdade',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'Qual hormônio é o principal responsável pela puberdade feminina?',
      answers: ['Testosterona', 'Estrogênio', 'Cortisol', 'Ocitocina'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é a "pubarca"?',
      answers: [
        'O surgimento de pelos pubianos',
        'A primeira menstruação',
        'O crescimento dos seios',
        'O odor corporal (axilas)',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'É normal a menstruação ser irregular nos primeiros anos após a menarca?',
      answers: [
        'Não, deve ser regular desde o início',
        'Sim, é muito comum levar um tempo para o ciclo regularizar',
        'Apenas se houver alguma doença',
        'Sim, mas apenas nos 3 primeiros meses',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'A puberdade ocorre em que faixa etária, em média?',
      answers: [
        'Entre 5 e 7 anos',
        'Entre 8 e 13 anos',
        'Entre 15 e 18 anos',
        'Aos 18 anos',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é o "estirão do crescimento"?',
      answers: [
        'Um período de rápido aumento na altura',
        'O aumento dos seios',
        'O surgimento da acne',
        'O ganho de peso acelerado',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'Além dos seios, o que mais muda no corpo feminino?',
      answers: [
        'Alargamento dos quadris e redistribuição de gordura',
        'Diminuição dos pés',
        'Mudança na cor dos olhos',
        'O cabelo ficar mais fino',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'O surgimento de acne (espinhas) na puberdade é causado por...',
      answers: [
        'Falta de higiene',
        'Alterações hormonais que aumentam a oleosidade da pele',
        'Comer chocolate',
        'Apenas por comer comida gordurosa',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'A puberdade afeta apenas o corpo?',
      answers: [
        'Sim, só o físico',
        'Não, também envolve grandes mudanças emocionais e sociais',
        'Sim, e dura apenas 6 meses',
        'Não, afeta apenas o corpo e os hormônios',
      ],
      correctAnswerIndex: 1,
    ),
  ],
);
