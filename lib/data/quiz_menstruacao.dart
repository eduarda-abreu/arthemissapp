import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart'; // Ajuste o caminho

final QuizTopic quizMenstruacao = QuizTopic(
  title: 'Menstruação',
  description: 'Tudo sobre o ciclo menstrual.',
  icon: Icons.water_drop_outlined,
  questions: [
    Question(
      questionText: 'O que é a menstruação?',
      answers: [
        'A liberação de um óvulo pelo ovário',
        'O sangramento mensal, parte do ciclo reprodutivo',
        'O início da gravidez',
        'O período mais fértil da mulher',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual é a duração média de um ciclo menstrual?',
      answers: ['14 dias', '28 dias', '35 dias', '40 dias'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que significa "TPM"?',
      answers: [
        'Tensão Pré-Menstrual',
        'Tempo Pós-Menopausa',
        'Teste Padrão Mensal',
        'Taxa Padrão de Menstruação',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'Um ciclo menstrual é contado a partir de...',
      answers: [
        'O último dia de sangramento',
        'O primeiro dia de sangramento',
        'O dia da ovulação',
        'O primeiro dia de cólica',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é a ovulação?',
      answers: [
        'O fim do ciclo menstrual',
        'O período de sangramento intenso',
        'A liberação de um óvulo pelo ovário',
        'A fase de cólica intensa',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'É possível engravidar durante a menstruação?',
      answers: [
        'Sim, embora menos provável',
        'Não, é impossível',
        'Somente se o ciclo for irregular',
        'Somente nos dois primeiros dias',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O que é um coletor menstrual?',
      answers: [
        'Um tipo de calcinha absorvente',
        'Um copinho de silicone inserido na vagina para coletar o fluxo',
        'Um medicamento para cólica',
        'Um tipo de absorvente interno',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Cólicas menstruais muito fortes são...',
      answers: [
        'Sempre normais, fazem parte',
        'Um sinal de alerta para procurar um médico',
        'Um sinal de gravidez',
        'Um sinal de fluxo intenso, apenas',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é a menarca?',
      answers: [
        'A primeira menstruação',
        'A última menstruação (menopausa)',
        'O período fértil do mês',
        'O período entre duas menstruações',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'A cor do sangue menstrual pode variar?',
      answers: [
        'Não, é sempre vermelho vivo',
        'Sim, de vermelho vivo a marrom escuro, e é normal',
        'Sim, mas apenas se houver uma infecção',
        'Não, é sempre marrom escuro',
      ],
      correctAnswerIndex: 1,
    ),
  ],
);
