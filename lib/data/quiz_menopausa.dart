import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart'; // Ajuste o caminho

final QuizTopic quizMenopausa = QuizTopic(
  title: 'Menopausa',
  description: 'A fase de transição hormonal.',
  icon: Icons.elderly_woman_outlined,
  questions: [
    Question(
      questionText: 'O que é a menopausa?',
      answers: [
        'A primeira menstruação',
        'A última menstruação, marcando o fim da fase reprodutiva',
        'Um período de alta fertilidade',
        'O período de cólicas intensas',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual é um sintoma muito comum da menopausa?',
      answers: [
        'Ondas de calor (fogachos)',
        'Aumento da altura',
        'Crescimento de novos dentes',
        'Perda de memória súbita',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'A menopausa ocorre devido à...',
      answers: [
        'Diminuição dos hormônios (estrogênio e progesterona)',
        'Uma infecção viral',
        'Excesso de exercício físico',
        'Uso prolongado de pílula anticoncepcional',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O que é o climatério?',
      answers: [
        'O mesmo que menopausa',
        'A fase de transição que antecede e sucede a menopausa',
        'Um sinônimo de TPM',
        'A primeira menstruação',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual a idade média para a menopausa ocorrer?',
      answers: ['20-30 anos', '30-40 anos', '45-55 anos', '60-65 anos'],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'Terapia de Reposição Hormonal (TRH) é indicada para...',
      answers: [
        'Todas as mulheres, sem exceção',
        'Algumas mulheres, para aliviar sintomas intensos, com avaliação médica',
        'Apenas para prevenir gravidez após os 50',
        'Mulheres que querem engravidar após os 50',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'A menopausa aumenta o risco de qual condição óssea?',
      answers: ['Osteoporose', 'Artrite', 'Escoliose', 'Diabetes'],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O que é "menopausa precoce"?',
      answers: [
        'Menstruar pela primeira vez muito cedo',
        'A menopausa ocorrer antes dos 40 anos',
        'A menopausa ocorrer após os 60 anos',
        'Sintomas de menopausa muito intensos',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'Lubrificantes íntimos são recomendados na menopausa para...',
      answers: [
        'Prevenir ISTs',
        'Combater o ressecamento vaginal',
        'Substituir a higiene diária',
        'Aumentar a fertilidade',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: '"Fogachos" é o nome popular dado para...',
      answers: [
        'Dores de cabeça intensas',
        'Ondas de calor súbitas',
        'Cãibras nas pernas durante a noite',
        'O sangramento fora de hora',
      ],
      correctAnswerIndex: 1,
    ),
  ],
);
