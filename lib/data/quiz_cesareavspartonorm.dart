import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart';

final QuizTopic quizCesareavspartonorm = QuizTopic(
  title: 'Cesárea vs Parto Normal',
  description: 'Tipos de parto.',
  icon: Icons.baby_changing_station_outlined,
  questions: [
    Question(
      questionText:
          'Qual tipo de parto geralmente tem uma recuperação mais rápida para a mãe?',
      answers: [
        'Parto Normal (vaginal)',
        'Cesárea',
        'Ambos são iguais',
        'Cesárea, pois não há esforço',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'A cesárea é...',
      answers: [
        'Sempre a melhor opção',
        'Uma cirurgia abdominal para o nascimento do bebê',
        'Um parto sem dor alguma',
        'Um parto normal com anestesia',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é o "trabalho de parto"?',
      answers: [
        'O processo de contrações que dilatam o colo do útero para o parto normal',
        'A cirurgia de cesárea',
        'Os exames feitos antes do parto',
        'A consulta final antes do parto',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'Quando a cesárea é medicamente indicada?',
      answers: [
        'Quando a mãe prefere por medo da dor',
        'Quando há risco para a mãe ou bebê (ex: bebê atravessado, placenta prévia)',
        'Em todas as primeiras gestações',
        'Sempre que o bebê for muito grande',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'Qual tipo de parto ajuda na liberação de ocitocina (hormônio do amor) naturalmente?',
      answers: [
        'Parto Normal',
        'Cesárea agendada',
        'Ambos',
        'Cesárea de emergência',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O que é a anestesia "epidural"?',
      answers: [
        'Uma anestesia geral (dorme completo)',
        'Uma anestesia local (nas costas) para aliviar a dor do parto normal',
        'Um remédio para dor de cabeça',
        'Um tipo de massagem para dor',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'A recuperação da cesárea envolve...',
      answers: [
        'Sair andando no mesmo dia sem dor',
        'Um corte cirúrgico (cicatriz) e cuidados pós-operatórios',
        'Apenas tomar vitaminas',
        'Não ter cicatriz',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é "parto humanizado"?',
      answers: [
        'Um parto feito em casa',
        'Um parto com foco no protagonismo da mulher e respeito às suas escolhas',
        'Um parto sem médico',
        'Um parto que usa fórceps',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'O bebê que nasce de parto normal pode ter benefícios para a imunidade?',
      answers: [
        'Sim, ao passar pelo canal vaginal, ele tem contato com bactérias "boas"',
        'Não, a imunidade é a mesma',
        'Não, é menos higiênico e perigoso',
        'Sim, pois ele nasce em ambiente 100% estéril',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O que é "episiotomia"?',
      answers: [
        'A anestesia do parto',
        'Um corte feito na região do períneo (entre vagina e ânus) durante o parto normal',
        'A primeira amamentação',
        'O nome dado à primeira contração',
      ],
      correctAnswerIndex: 1,
    ),
  ],
);
