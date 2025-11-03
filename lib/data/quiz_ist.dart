import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart'; // Ajuste o caminho

final QuizTopic quizIST = QuizTopic(
  title: 'ISTs',
  description: 'Sobre Infecções Sexualmente Transmissíveis.',
  icon: Icons.shield_outlined,
  questions: [
    Question(
      questionText: 'O que significa a sigla IST?',
      answers: [
        'Infecção Sexualmente Transmissível',
        'Insuficiência Sanguínea Total',
        'Interrupção Sistêmica Temporária',
        'Infecção Sanguínea Testicular',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'Qual é a forma MAIS eficaz de prevenir a maioria das ISTs?',
      answers: [
        'Tomar pílula anticoncepcional',
        'Usar preservativo (camisinha)',
        'Lavar-se após a relação',
        'Fazer exames de sangue anuais',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual destas ISTs é causada por um vírus?',
      answers: ['Sífilis', 'Gonorreia', 'Herpes', 'Candidíase'],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'A Clamídia e a Gonorreia podem causar infertilidade?',
      answers: [
        'Sim, se não tratadas corretamente',
        'Não, elas afetam apenas a pele',
        'Apenas em homens',
        'Não, nunca',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'Qual IST é conhecida por ter várias fases (primária, secundária, terciária)?',
      answers: ['HPV', 'Sífilis', 'Candidíase', 'Herpes'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O HIV é o vírus que causa qual doença?',
      answers: ['Hepatite', 'Herpes', 'AIDS', 'Sífilis'],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'É possível ter uma IST e não apresentar sintomas?',
      answers: [
        'Sim, muitas ISTs são assintomáticas',
        'Não, todas causam dor ou coceira imediatas',
        'Apenas por alguns dias',
        'Não, todas causam febre',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText:
          'O "sangue no teste" é a única forma de diagnosticar todas as ISTs?',
      answers: [
        'Sim, todas são vistas no exame de sangue',
        'Não, exames de urina, físicos e de secreção também são usados',
        'Sim, e precisa estar em jejum',
        'Não, apenas exames físicos são 100%',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Qual o principal sintoma do Herpes Genital?',
      answers: [
        'Febre alta e tosse',
        'Pequenas bolhas ou feridas dolorosas na região genital',
        'Manchas vermelhas no peito',
        'Corrimento com cheiro forte',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Existe vacina para alguma IST?',
      answers: [
        'Sim, para HPV e Hepatite B',
        'Não, para nenhuma',
        'Sim, apenas para HIV',
        'Sim, para todas as principais (HIV, Sífilis, HPV)',
      ],
      correctAnswerIndex: 0,
    ),
  ],
);
