import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart';
// Ajuste o caminho

final QuizTopic quizcandevagi = QuizTopic(
  title: 'Candidíase e Vaginose',
  description: 'Infecções comuns.',
  icon: Icons.flare_outlined,
  questions: [
    Question(
      questionText: 'A Candidíase é causada por...',
      answers: [
        'Um vírus',
        'Uma bactéria',
        'Um fungo (Candida)',
        'Um parasita',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'Qual o sintoma clássico da Candidíase?',
      answers: [
        'Coceira intensa e corrimento branco (aspecto de leite coalhado)',
        'Febre alta',
        'Corrimento com cheiro de peixe',
        'Pequenas bolhas (feridas) dolorosas',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'A Vaginose Bacteriana é marcada por...',
      answers: [
        'Ausência de corrimento',
        'Corrimento acinzentado com cheiro forte (peixe)',
        'Manchas vermelhas na pele',
        'Coceira intensa e dor',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'A Vaginose Bacteriana é um desequilíbrio do quê?',
      answers: [
        'Das bactérias "boas" (lactobacilos) da vagina',
        'Dos hormônios da tireoide',
        'Dos níveis de açúcar no sangue',
        'Do pH do sangue',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'A Candidíase é uma IST?',
      answers: [
        'Sim, sempre',
        'Não, é um desequilíbrio da flora (fungo que já existe ali), embora possa ser transmitida',
        'Sim, e não tem cura',
        'Apenas se o homem transmitir',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual fator pode piorar a Candidíase de repetição?',
      answers: [
        'Uso de antibióticos, estresse, baixa imunidade, diabetes',
        'Beber muita água',
        'Tomar sol',
        'Praticar muito exercício físico',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O tratamento da Candidíase geralmente é feito com...',
      answers: [
        'Antibiótico',
        'Antifúngico (pomada ou comprimido)',
        'Anti-inflamatório',
        'Vitamina C',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'O tratamento da Vaginose Bacteriana geralmente é feito com...',
      answers: [
        'Antibiótico',
        'Antifúngico',
        'Apenas repouso',
        'Anti-inflamatório',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'Candidíase causa cheiro forte?',
      answers: [
        'Sim, cheiro de peixe',
        'Geralmente não tem cheiro ou tem cheiro leve (de pão/fermento)',
        'Sim, cheiro de alho',
        'Sim, cheiro muito doce',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'É possível ter as duas (Candidíase e Vaginose) ao mesmo tempo?',
      answers: [
        'Não, uma impede a outra',
        'Sim, pode acontecer (infecção mista)',
        'Apenas em mulheres grávidas',
        'Não, a Vaginose é a evolução da Candidíase',
      ],
      correctAnswerIndex: 1,
    ),
  ],
);
