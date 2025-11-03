import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart';

final QuizTopic quizCorrimento = QuizTopic(
  title: 'Corrimento Vaginal',
  description: 'O que é normal ou não.',
  icon: Icons.opacity_outlined,
  questions: [
    Question(
      questionText: 'Todo corrimento vaginal é sinal de infecção?',
      answers: [
        'Sim, sempre',
        'Não, existe um corrimento fisiológico (normal) e transparente/branco',
        'Sim, e deve ser tratado com antibiótico',
        'Não, apenas se tiver cheiro',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual sinal no corrimento indica procurar um médico?',
      answers: [
        'Ser transparente e sem cheiro, tipo "clara de ovo"',
        'Cor amarelada/esverdeada, coceira ou cheiro forte',
        'Aumentar um pouco perto da ovulação',
        'Ser muito abundante (em grande volume)',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O corrimento "normal" (fisiológico) serve para...',
      answers: [
        'Limpar e lubrificar a vagina, protegendo contra infecções',
        'É um sinal de doença',
        'É um sinal de gravidez',
        'É um sinal de baixa imunidade',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O que pode alterar o corrimento normal?',
      answers: [
        'Ciclo menstrual (ovulação), excitação, gravidez',
        'Apenas o tipo de comida',
        'Apenas o clima (frio ou calor)',
        'Apenas o uso de sabonete íntimo',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'Corrimento com cheiro forte (como peixe podre) pode ser...',
      answers: ['Normal', 'Candidíase', 'Vaginose Bacteriana', 'HPV'],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText:
          'Corrimento branco, espesso (tipo leite coalhado) e com coceira, pode ser...',
      answers: [
        'Normal',
        'Candidíase',
        'Vaginose Bacteriana',
        'Infecção urinária',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Corrimento amarelado-esverdeado e bolhoso pode ser...',
      answers: ['Normal', 'Tricomoníase (uma IST)', 'Ovulação', 'Menstruação'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Usar "duchas vaginais" (lavar por dentro) é recomendado?',
      answers: [
        'Sim, ajuda na limpeza',
        'Não, desequilibra a flora vaginal e pode causar infecções',
        'Sim, se for com sabonete neutro',
        'Sim, mas apenas uma vez por semana',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Usar calcinha de algodão e dormir sem calcinha pode...',
      answers: [
        'Piorar o corrimento',
        'Ajudar a prevenir infecções, pois permite a ventilação',
        'Não faz diferença',
        'Aumentar a chance de gravidez',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Corrimento marrom (borra de café) pode ser...',
      answers: [
        'Sinal de ovulação',
        'Início ou fim da menstruação (sangue antigo)',
        'Sinal de gripe',
        'Sinal de infecção por fungo',
      ],
      correctAnswerIndex: 1,
    ),
  ],
);
