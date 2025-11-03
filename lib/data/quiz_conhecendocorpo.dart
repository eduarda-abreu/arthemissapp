import 'package:arthemisapp/data/quiz_data.dart';
import 'package:flutter/material.dart'; // Ajuste o caminho

final QuizTopic quizConhecendocorpo = QuizTopic(
  title: 'Conhecendo o corpo',
  description: 'Anatomia e autoconhecimento.',
  icon: Icons.accessibility_new_outlined,
  questions: [
    Question(
      questionText: 'A vulva é...',
      answers: [
        'A parte interna (canal vaginal)',
        'A parte externa da genitália feminina (lábios, clitóris)',
        'O mesmo que o útero',
        'O canal por onde sai a urina',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Onde fica o clitóris?',
      answers: [
        'Dentro do útero',
        'Na parte superior da vulva, focado no prazer',
        'Próximo ao ânus',
        'No fundo da vagina',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que é a vagina?',
      answers: [
        'A parte externa que vemos',
        'O canal muscular que liga a vulva ao colo do útero',
        'O órgão que produz óvulos',
        'O órgão que produz hormônios',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Onde fica o colo do útero (cérvix)?',
      answers: [
        'Na parte de fora da vulva',
        'Na parte de cima do abdômen',
        'No fundo da vagina, sendo a "entrada" para o útero',
        'No meio do útero',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      // PERGUNTA CORRIGIDA PARA PRECISÃO ANATÔMICA
      questionText: 'Quais são as duas aberturas localizadas DENTRO da vulva?',
      answers: [
        'Vagina e Ânus',
        'Uretra e Clitóris',
        'Uretra e Vagina',
        'Clitóris e Vagina',
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'Por onde sai a urina (xixi)?',
      answers: [
        'Pela vagina',
        'Pela uretra',
        'Pelo clitóris',
        'Pelo colo do útero',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'O que são os ovários?',
      answers: [
        'Dois órgãos que armazenam e liberam os óvulos',
        'Os canais que levam o óvulo ao útero',
        'A parte de fora da vulva',
        'O local onde o bebê se desenvolve',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O que é o hímen?',
      answers: [
        'Uma membrana fina na entrada da vagina, presente em algumas mulheres',
        'O órgão responsável pelo prazer',
        'O local onde o bebê cresce',
        'Um músculo que fecha a vagina',
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'O que são as trompas de Falópio?',
      answers: [
        'O mesmo que os ovários',
        'Os canais onde geralmente ocorre a fecundação (encontro do óvulo e espermatozoide)',
        'Os músculos da vagina',
        'Um sinônimo de útero',
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Onde o bebê se desenvolve durante a gravidez?',
      answers: ['No ovário', 'Na vagina', 'No útero', 'Na trompa de Falópio'],
      correctAnswerIndex: 2,
    ),
  ],
);
