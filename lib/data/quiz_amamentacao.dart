import 'package:flutter/material.dart';
import 'package:arthemisapp/data/quiz_data.dart';
// Adicione esta linha no topo dos seus arquivos:// Ajuste o caminho

// ignore: non_constant_identifier_names
final QuizTopic quizAmamentacao = QuizTopic(
  title: 'Amamentação',
  description: 'Benefícios e desafios.',
  icon: Icons.child_care_outlined,
  questions: [
    Question(
      questionText: 'O colostro é...',
      answers: [
        'O "primeiro leite" (amarelo), rico em anticorpos e nutrientes',
        'Um tipo de fórmula infantil',
        'Uma doença que impede amamentar',
        'O leite que sai após os 6 meses',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'A OMS recomenda amamentação exclusiva até...',
      answers: [
        'Os 3 meses',
        'Os 6 meses',
        'O primeiro ano',
        'O bebê ter dentes',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é a "pega correta"?',
      answers: [
        'Quando o bebê abocanha apenas o bico do peito',
        'Quando o bebê abocanha a aréola (parte escura) e não só o bico',
        'Quando o bebê usa chupeta',
        'Quando o bebê morde o bico',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Leite materno previne o quê no bebê?',
      answers: [
        'Infecções, alergias e diarreia',
        'Fraturas ósseas',
        'Miopia',
        'Crescimento acelerado (altura)',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O que é "livre demanda" na amamentação?',
      answers: [
        'Amamentar de 3 em 3 horas certinho',
        'Amamentar sempre que o bebê mostrar sinais de fome',
        'Dar fórmula e peito',
        'Amamentar apenas 3 vezes ao dia',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'A amamentação traz benefícios para a mãe?',
      answers: [
        'Não, apenas para o bebê',
        'Sim, ajuda o útero a voltar ao tamanho normal e reduz risco de câncer de mama',
        'Sim, mas apenas se for por mais de 2 anos',
        'Sim, mas apenas esteticamente (perda de peso)',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é "leite fraco"?',
      answers: [
        'Um problema comum em muitas mães',
        'Um mito; não existe leite fraco, o leite materno é sempre adequado',
        'Leite com pouca gordura',
        'Leite que precisa ser suplementado com fórmula',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que pode causar fissuras (rachaduras) no mamilo?',
      answers: [
        'O bebê sugar muito forte',
        'A "pega" incorreta do bebê',
        'O leite ser muito grosso',
        'O leite ser muito salgado',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é a "apojadura"?',
      answers: [
        'A descida do leite (aumento do volume), dias após o parto',
        'O fim da amamentação',
        'O primeiro banho do bebê',
        'Quando o leite seca (empedra)',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'Mãe que volta a trabalhar pode continuar amamentando?',
      answers: [
        'Não, ela deve parar (desmamar)',
        'Sim, ela pode ordenar (tirar) e armazenar o leite para o bebê',
        'Apenas se trabalhar em casa',
        'Apenas se o trabalho for de meio período',
      ],
      correctAnswerIndex: 1,
    ),
  ],
);
